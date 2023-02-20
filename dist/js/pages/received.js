$(function () {
	"use strict";
	let mybase_url = $("#url_base").val();

	let t = $("#table_rcvd").DataTable({
		order: [[0, "desc"]],
	});
	$("#tb_as").autoResize();
	$("#issue_decree").autoResize();

	$("#tb_c").select2();
	$("#tb_cl").select2();

	let date = moment().format("DD/MM/YYYY");
	$("#tb_d").bootstrapMaterialDatePicker({
		weekStart: 0,
		time: false,
		format: "DD/MM/YYYY",
	});
	$("#tb_d").val(date);

	$("#send_rcvd").on("submit", (e) => {
		e.preventDefault();

		let rowfrm = $(".form-control");

		let f = $(this);
		var formData = new FormData(document.getElementById("send_rcvd"));
		formData.append("dato", "valor");

		$.ajax({
			url: "correspondence/saveRcvd",
			type: "post",
			dataType: "json",
			data: formData,
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: () => {
				$("#btn_rcvd").attr("disabled", "disabled");
				$("#btn_rcvd").text("Cargando...");
			},
		})
			.done((res) => {
				if (res.key == 200) {
					t.row
						.add([
							'<button class="btn btn-info" OnClick="viewRcvd(' +
								res.id +
								", " +
								res.ext +
								')"><i class="fas fa-file-image"></i> ' +
								res.rsp +
								"</button>",
							rowfrm[0].value,
							rowfrm[1].value,
							rowfrm[2].value,
							rowfrm[3].value,
							rowfrm[4].value,
							rowfrm[6].value,
							rowfrm[5].value,
							'<button class="btn waves-effect waves-light w-100 btn-danger" OnClick="decree(0,' +
								res.id +
								')"> No Decretado</button>',
							'<td><span class="btn btn-danger">No Decretado</span></td>',
						])
						.draw(false);
					$("#send_rcvd")[0].reset();
					$("#img_r").attr("src", mybase_url + "/assets/images/square_p.jpg");
					$("#file-1-preview div").html("<span>+</span>");
					$("#tb_d").val(date);

					$("#btn_rcvd").removeAttr("disabled");
					$("#btn_rcvd").text("Enviar");

					successMsg(
						"Correspondecia Agregado",
						"Nueva correspondecia recibida agregado",
						"#ff6849",
						"success"
					);
				} else if (res.key == 400) {
					$("#file-1-preview").css("border", "2px solid red");

					successMsg(
						"Error Imagen",
						"Tomar foto a la Correspondencia Recibida",
						"#ff6849",
						"error"
					);
					$("#btn_rcvd").removeAttr("disabled");
				}
			})
			.fail((error) => {
				console.log(error.responseText);
			});
	});

	$("#close").on("click", () => {
		$(".select2").empty();
		$("#issue_decree").empty();
		$("#decree").modal("hide");
		$("#urg").prop("checked", false);
		$("#m_urg").prop("checked", false);
	});
	$("#btn_decree").on("click", () => {
		let val = $("#slct_rol").val();
		let slcttxt = $("#slct_rol option:selected").html();
		let id_cr = $("#id_cr").val();
		let slct_decree = $("#slct_decree").val(),
			issue = $("#issue_decree").val(),
			radio;

		if ($("#urg").is(":checked")) {
			radio = "1";
		} else {
			radio = "2";
		}
		let array_var = {
			val: val,
			id_cr: id_cr,
			radio: radio,
			issue: issue,
			slct_decree: slct_decree,
		};
		$.ajax({
			method: "POST",
			url: "correspondence/decreeTeam",
			data: array_var,
			dataType: "JSON",
			async: true,
		}).done((data) => {
			if (data.rsp == 400) {
				successMsg(
					"Advertencia de Permisos",
					"El actual usuario no puede realizar la siguiente acción",
					"#ff6849",
					"warning"
				);
			} else if (data.rsp == 200) {
				$("#table_rcvd")
					.find("tbody")
					.find("td")
					.each(function () {
						if ($(this).attr("id") == "d" + id_cr) {
							$("#d" + id_cr).html(
								'<button class="btn waves-effect waves-light w-100 btn-primary" Onclick="decree(' +
									val +
									"," +
									id_cr +
									"," +
									slct_decree +
									"," +
									radio +
									
									')">' +
									slcttxt +
									"</button>"
							);
						}
					});
				successMsg(
					"Modificación Correcta",
					"La correspondencia se decreto correctamente",
					"#ff6849",
					"success"
				);

				$(".mdl_range").fadeOut();
				$(".select2").empty();
				$("#decree").modal("hide");
			}
		});
	});
});

function decree(dec, id_cr, mode_decree, urg) {
	//Initialize Decree

	$("#decree").modal({ backdrop: "static", keyboard: false });
	$("#decree").modal("show");
	$("#title_decree").text("Decretar Correspondencia Recibida");
	let select = $("#slct_rol").select2({
		dropdownParent: $("#decree"),
	});
	let slct_decree = $("#slct_decree").select2({
		dropdownParent: $("#decree"),
	});
	$.ajax({
		method: "post",
		url: "correspondence/userView",
		data: {id_corr:id_cr},
		dataType: "json",
	}).done((data) => {
		$("#id_cr").val(id_cr);
		for (let i = 0; i < data.rol.length; i++) {
			let id = data.rol[i]["id_rol"];
			let name = data.rol[i]["name_rol"];
			if (id == dec) {
				select.append(
					'<option selected value="' + id + '">' + name + "</option>"
				);
			} else if (id == "1" || id == "2") {
			} else {
				select.append('<option value="' + id + '">' + name + "</option>");
			}
		}
		for (let j = 0; j < data.decree.length; j++) {
			let id = data.decree[j]["id_decree"];
			let name = data.decree[j]["name_decree"];
			if (id == mode_decree) {
				slct_decree.append(
					'<option selected value="' + id + '">' + name + "</option>"
				);
			} else {
				slct_decree.append('<option value="' + id + '">' + name + "</option>");
			}
		}
		if (urg == "1") {
			$("#urg").prop("checked", true);
		} else {
			$("#m_urg").prop("checked", true);
		}
		$("#issue_decree").val(data.corr[0]["issue_decree"]);
	});
}
function viewRcvd(id, ext) {
	let mybase_url = $("#url_base").val();

	if (ext == "png" || ext == "jpg" || ext == "jpeg") {
		$("#tooltipmodals").modal({ backdrop: "static", keyboard: false });
		$("#tooltipmodals").modal("show");
		setTimeout(() => {
			$("#spinn_img").attr("style", "display: none");
			$("#view_img").removeAttr("style");
			$("#view_img").attr(
				"src",
				mybase_url + "assets/images/cr_recvd/" + id + "." + ext
			);
		}, 800);
	} else {
		$("#view_pdf").modal("show");
		$("#object_pdf").removeAttr("style");
		$("#object_pdf").attr(
			"data",
			mybase_url + "assets/images/cr_recvd/" + id + "." + ext
		);
	}
}

function closeRcvd() {
	$("#tooltipmodals").modal("hide");
	$("#view_img").attr("style", "display: none");
	$("#spinn_img").removeAttr("style");
}
function previewBeforeUpload(id) {
	document.querySelector("#" + id).addEventListener("change", function (e) {
		if (e.target.files.length == 0) {
			return;
		}
		let file = e.target.files[0];
		let url = URL.createObjectURL(file);
		document.querySelector("#" + id + "-preview div").innerText = recortaDatos(
			file.name,
			"18"
		);
		document.querySelector("#" + id + "-preview img").src = url;
	});
}
function recortaDatos(dato, longitud) {
	var respuesta = dato;
	if (dato.length > longitud) {
		respuesta = dato.substring(0, longitud - 3) + "...";
	}
	return respuesta;
}

previewBeforeUpload("file-1");
