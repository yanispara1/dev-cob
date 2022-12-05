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
	$(".btn_close1").on("click", function () {
		$("#mdl_resup1").fadeOut();
		$("#frm-res1")[0].reset();
	});

	$("#btn_save").on("click", function () {
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
			let array = { a: a, b: b, c: c, d: d, id: e, type: g };
			$.ajax({
				method: "post",
				dataType: "json",
				url: "dashboard/upResolution",
				data: array,
				beforeSend: () => {
					$("#btn_save").attr("disabled", "true");
				},
			})
				.done((f) => {
					$("#name").removeAttr("style");
					$("#rang").removeAttr("style");
					$("#mess").removeAttr("style");
					$("#ref").removeAttr("style");
					txt_box.each(function (i, e) {
						$(e).css("border", "");
					});
					$("#btn_save").removeAttr("disabled");
					$("#mdl_res").fadeOut();
					$("#frm-res")[0].reset();

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
	$("#btn_modify").on("click", function () {
		let a = $("#name1").val(),
			b = $("#rang1").val(),
			c = $("#mess1").val(),
			d = $("#ref1").val(),
			e = $("#id_tramite1").val(),
			g = $("#type1").val(),
			txt_box = $("#frm-res").find(':input[type="text"]'),
			h = $("#id_res").val();
		let array = { a: a, b: b, c: c, d: d, id: e, type: g, h: h };
		txt_box.each(function (i, e) {
			if ($(e).val().length <= 0) {
				$(e).css("border", "1px solid red");
			} else {
				$(e).css("border", "1px solid green");
			}
		});
		$.ajax({
			method: "post",
			dataType: "json",
			url: "dashboard/modResolution",
			data: array,
			beforeSend: () => {
				$("#btn_modify").attr("disabled", "true");
			},
		})
			.done((f) => {
				$("#name1").removeAttr("style");
				$("#rang1").removeAttr("style");
				$("#mess1").removeAttr("style");
				$("#ref1").removeAttr("style");
				txt_box.each(function (i, e) {
					$(e).css("border", "");
				});
				$("#btn_modify").removeAttr("disabled");
				$("#mdl_resup1").fadeOut();
				$("#frm-res1")[0].reset();

				successMsg(
					"Resolución Modificado",
					"En un momento lo redireccionaremmos a la Resolución Modificado",
					"#ff6849",
					"success"
				);
				setTimeout(function () {
					let win = window.open("resolucion/" + f.r, "_blank");
					win.focus();
				}, 3200);
			})
			.fail((g) => {});
	});
});
function verify(a, b) {
	$.ajax({
		method: "post",
		dataType: "json",
		url: "dashboard/getTramite",
		data: { id: a, type: b },
	}).done((c) => {
		if (c.go == 1) {
			upResolution(a, b);
		} else {
			resolution(a, b);
		}
	});
}

function resolution(a, b) {
	$.ajax({
		method: "post",
		dataType: "json",
		url: "dashboard/getTramite",
		data: { id: a, type: b },
	}).done((c) => {
		$("#id_tramite").val(a);
		$("#type").val(b);
		$("#speciality").text(c.specialty.toUpperCase());
		if (c.person == "1") {
			$("#name_student").text(
				c.lastname_user.toUpperCase() + " " + c.name_user.toUpperCase()
			);
			$("#dni").text(c.dni);
			$("#parentesco").text("TITULAR");
		} else {
			$("#name_student").text(
				c.last_fam.toUpperCase() + " " + c.name_fam.toUpperCase()
			);
			$("#dni").text(c.cift_fam);
			$("#parentesco").text(c.relationship);
		}

		$("#range").text(c.name_range.toUpperCase());
		$("#name_titular").text(
			c.lastname_user.toUpperCase() + " " + c.name_user.toUpperCase()
		);
	});
	$("#mdl_res").fadeIn();
}
function upResolution(a, b) {
	$.ajax({
		method: "post",
		dataType: "json",
		url: "dashboard/getTramite",
		data: { id: a, type: b },
	}).done((c) => {
		if (c.go == 1) {
			$("#name1").val(c.t["adress_name"]);
			$("#rang1").val(c.t["range_res"]);
			$("#mess1").val(c.t["issue_res"]);
			$("#ref1").val(c.t["ref_res"]);
			$("#id_res").val(c.idres);
		}
		$("#id_tramite1").val(a);
		$("#type1").val(b);
		$("#speciality1").text(c.specialty.toUpperCase());
		if (c.person == "1") {
			$("#name_student1").text(
				c.lastname_user.toUpperCase() + " " + c.name_user.toUpperCase()
			);
			$("#dni1").text(c.dni);
			$("#parentesco1").text("TITULAR");
		} else {
			$("#name_student1").text(
				c.last_fam.toUpperCase() + " " + c.name_fam.toUpperCase()
			);
			$("#dni1").text(c.cift_fam);
			$("#parentesco1").text(c.relationship);
		}

		$("#range1").text(c.name_range.toUpperCase());
		$("#name_titular1").text(
			c.lastname_user.toUpperCase() + " " + c.name_user.toUpperCase()
		);
	});
	$("#mdl_resup1").fadeIn();
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
