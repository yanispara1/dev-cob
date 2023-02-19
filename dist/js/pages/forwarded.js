$(function () {
	let date = moment().format("DD/MM/YYYY"),
		id = window.location.hash,
		i = $("#id_rcvd").val(id.slice(1));
	destiny(id.slice(1));
	$("#tb_d").bootstrapMaterialDatePicker({
		weekStart: 0,
		time: false,
		format: "DD/MM/YYYY",
	});
	let t = $("#table_frwrd").DataTable({
		order: [[0, "desc"]],
	});
	$("#tb_d").val(date);
	$("#tb_as").autoResize();
	$("#send_frwd").on("submit", (e) => {
		e.preventDefault();

		let rowfrm = $(".form-control");

		let f = $(this);
		var formData = new FormData(document.getElementById("send_frwd"));
		formData.append("dato", "valor");

		$.ajax({
			url: "correspondence/saveFrwrd",
			type: "post",
			dataType: "json",
			data: formData,
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: () => {
				$("#btn_frwrd").attr("disabled", "disabled");
			},
		})
			.done((res) => {
				if (res.key == 200) {
					t.row
						.add([
							res.id,
							"<button>" + id.slice(1) + "</button>",
							rowfrm[0].value,
							rowfrm[2].value,
							rowfrm[4].value,
							rowfrm[3].value,
							rowfrm[5].value,
							rowfrm[6].value,
							rowfrm[1].value,
							'<button class="btn btn-youtube waves-effect waves-light" type="button" onclick="viewPDF(' +
								res.id +
								"," +
								res.ext +
								')"><i class="far fa-file-pdf"></i></button>',
						])
						.draw(false);
					$("#send_frwd")[0].reset();
					$("#tb_d").val(date);
					$("#img_r").attr(
						"src",
						location.origin + "/dev-cob/assets/images/square_p.jpg"
					);
					$("#file-2-preview div").html("<span>+</span>");
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
				alert(error);
			});
	});


});
function viewFiles(id) {
	$("#view_files").modal("show");
	$("#id_frwrd").val(id);
}
function closeRcvd() {
	$("#view_files").modal("hide");
	$("#files_frwrd").val();
}
function viewPDF(id, ext) {
	console.log(id, ext);
	$("#view_pdf").modal("show");

	$("#object_pdf").attr(
		"data",
		$("#url").val() + "assets/images/cr_forwarded/" + id + "." + ext
	);
}
function destiny(id) {
	$.post("correspondence/viewCorr", { id_corr: id }, 'json').done(function (g) {
		if (g.corr[0]["sender_rcvd"] != "") {
			$("#tb_ds").val(g.corr[0]["sender_rcvd"]);
		}
	});
}
$.fn.autoResize = function () {
	let r = (e) => {
		e.style.height = "";
		e.style.height = e.scrollHeight + "px";
	};
	return this.each((i, e) => {
		e.style.overflow = "hidden";
		r(e);
		$(e).bind("input", (e) => {
			r(e.target);
		});
	});
};
function previewBeforeUpload(id) {
	document.querySelector("#" + id).addEventListener("change", function (e) {
		if (e.target.files.length == 0) {
			return;
		}
		let file = e.target.files[0];
		let url = URL.createObjectURL(file);
		if (getFileExt(file.name) == "pdf") {
			document.querySelector("#" + id + "-preview img").src =
				base_url + "assets/images/pdf.png";
		} else {
			document.querySelector("#" + id + "-preview img").src = url;
		}
		document.querySelector("#" + id + "-preview div").innerText = recortaDatos(
			file.name,
			"18"
		);
	});
}
function recortaDatos(dato, longitud) {
	var respuesta = dato;
	if (dato.length > longitud) {
		respuesta = dato.substring(0, longitud - 3) + "...";
	}
	return respuesta;
}
previewBeforeUpload("file-2");
