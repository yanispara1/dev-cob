$(function () {
	"use strict";

	$("#data-das").DataTable({
		ordering: true,
		responsive: true,
	});
	$("#data-dace").DataTable({
		responsive: true,
		ordering: true,
	});

	$(".btn_close").on("click", function () {
		$("#mdl_res").fadeOut();
		$("#frm-res")[0].reset();

	});

	$(".btn_save").on("click", function () {
		let txt_box = $("#frm-res").find(':input[type="text"]'),
			a = $("#name").val(),
			b = $("#rang").val(),
			c = $("#mess").val(),
			d = $("#ref").val(),
			e = $("#id_tramite").val(),
			g = $("#type").val();

		txt_box.each(function (i, e) {
			if ($(e).val().length <= 0) {
				$(e).css("border", "1px solid red");
			} else {
				$(e).css("border", "1px solid green");
			}
		});
		if (a != "" && b != "" && c != "" && d != "") {
			let array = { a: a, b: b, c: c, d: d, id: e, type:g };
			$.ajax({
				method: "post",
				dataType: "json",
				url: "dashboard/upResolution",
				data: array,
				beforeSend: () => {
					$(".btn_save").attr("disabled", "true");
				},
			})
				.done((f) => {
					txt_box.each(function (i, e) {
						$(e).css("border", "");
					});
					$(".btn_save").removeAttr('disabled')

					$("#mdl_res").fadeOut();

					successMsg(
						"Resolución Generado",
						"En un momento lo redireccionaremmos a la Resolución Generado",
						"#ff6849",
						"success"
					);

					$("#frm-res")[0].reset();
					setTimeout(function () {
						let win = window.open("resolucion/" + f.id, "_blank");
						win.focus();
					}, 3200);
				})
				.fail((g) => {});
		}
	});
});

function resolution(a, b) {
	$.ajax({
		method: "post",
		dataType: "json",
		url: "dashboard/getTramite",
		data: { id: a, type: b },
	}).done((c) => {
		$("#id_tramite").val(a);
		$("#type").val(b);
		$("#speciality").text(c.row["uni_specialty"].toUpperCase());
		if (c.row["person"] == "1") {
			$("#name_student").text(
				c.row["lastname_user"].toUpperCase() +
					" " +
					c.row["name_user"].toUpperCase()
			);
			$("#dni").text(c.dni);
			$("#parentesco").text("TITULAR");
		} else {
			$("#name_student").text(
				c.row["uni_last_fam"].toUpperCase() +
					" " +
					c.row["uni_name_fam"].toUpperCase()
			);
			$("#dni").text(c.row["uni_cift_fam"]);
			$("#parentesco").text(c.row["relationship"]);
		}

		$("#range").text(c.row["name_range"].toUpperCase());
		$("#name_titular").text(
			c.row["lastname_user"].toUpperCase() +
				" " +
				c.row["name_user"].toUpperCase()
		);
	});
	$("#mdl_res").fadeIn();
}
function successMsg(d, f, g, h) {
	$.toast({
		heading: d,
		text: f,
		position: "top-right",
		loaderBg: g,
		icon: h,
		hideAfter: 3500,
		stack: 6,
	});
}
