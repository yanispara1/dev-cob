$(function () {
	"use strict";

	let t = $("#table_rcvd").DataTable({
		order: [[0, "desc"]],
	});

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
								')"><i class="fas fa-file-image"></i>' +
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
								'<td><span class="btn btn-danger">No Decretado</span></td>'
						])
						.draw(false);
					$("#send_rcvd")[0].reset();
					$("#img_r").attr(
						"src",
						location.origin + "/assets/images/square_p.jpg"
					);
					$("#file-1-preview div").html("<span>+</span>");
					$("#tb_d").val(date);

					$("#btn_rcvd").removeAttr("disabled");

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
		$("#decree").modal("hide");
	});
	$("#btn_decree").on("click", () => {
		let val = $("#slct_rol").val();
		let slcttxt = $("#slct_rol option:selected").html();
		let id_cr = $("#id_cr").val();

		$.ajax({
			method: "post",
			url: "correspondence/decreeTeam",
			data: { val: val, id_cr: id_cr },
			dataType: "json",
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

function decree(dec, id_cr) {
	//Initialize Decree

	$("#decree").modal({ backdrop: "static", keyboard: false });
	$("#decree").modal("show");
	$("#title_decree").text("Decretar Correspondencia Recibida");
	let select = $("#slct_rol").select2({
		dropdownParent: $("#decree"),
	});
	$.ajax({
		method: "post",
		url: "correspondence/userView",
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
	});
}
function viewRcvd(id, ext) {
	$("#tooltipmodals").modal({ backdrop: "static", keyboard: false });
	$("#tooltipmodals").modal("show");

	setTimeout(() => {
		$("#spinn_img").attr("style", "display: none");
		$("#view_img").removeAttr("style");
		$("#view_img").attr(
			"src",
			location.origin + "/dev-cob/assets/images/cr_recvd/" + id + "." + ext
		);
	}, 800);
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
