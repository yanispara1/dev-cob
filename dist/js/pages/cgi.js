$(function () {
	"use strict";

	$("#tb_ca, #tb_di").autoResize();

	$("#ubigeo_birthday, #ubigeo_home, #ubigeo_atencion").select2({
		placeholder: "Buscar Código de Ubigeo",
		minimumInputLength: 2,
		ajax: {
			url: "cgi/data_ubigeo",
			dataType: "json",
			type: "GET",
			delay: 250,
			data: function (params) {
				return {
					q: params.term,
				};
			},
			processResults: function (data) {
				return {
					results: data,
				};
			},
			cache: true,
		},
	});

	$("#general_data").on("submit", (e) => {
		e.preventDefault();
		$("#btn_general").attr("disabled", "disabled");
		$("#btn_general").html("Cargando...");
		$.ajax({
			url: "cgi/insert_general",
			method: "post",
			dataType: "json",
			data: $("#general_data").serialize(),
		})
			.done((i) => {
				Swal.fire({
					title: "Datos generales guardados",
					text: "Los datos generales han sido guardados, Puede darle al botón de siguiente si aún no ha rellenado el Motivo de Invalidez.",
					type: "success",
					showCancelButton: true,
					confirmButtonColor: "#3085d6",
					cancelButtonColor: "#d33",
					cancelButtonText: "Cancelar",
					confirmButtonText: "Siguiente",
				}).then((result) => {
					if (result.value) {
						$("#events_ej").focus();
						$("#icon_general").removeClass("ti-minus").addClass("ti-plus");
						$("#div_general").removeClass("show");
					}
				});
			})
			.always(() => {
				$("#btn_general").removeAttr("disabled");
				$("#btn_general").html("Guardar Datos Generales");
			});
	});

	$("#disability_reason").on("submit", (e) => {
		e.preventDefault();
		$("#btn_reason").attr("disabled", "disabled");
		$("#btn_reason").html("Cargando...");
		$.ajax({
			url: "cgi/insert_reason",
			method: "post",
			dataType: "json",
			data: $("#disability_reason").serialize(),
		})
			.done((i) => {
				Swal.fire({
					title: "Datos generales guardados",
					text: "Los datos generales han sido guardados, Puede darle al botón de siguiente si aún no ha rellenado el Requerimientos.",
					type: "success",
					showCancelButton: true,
					confirmButtonColor: "#3085d6",
					cancelButtonColor: "#d33",
					cancelButtonText: "Cancelar",
					confirmButtonText: "Siguiente",
				}).then((result) => {
					if (result.value) {
						$("#ubigeo_atencion").focus();
						$("#icon_reason").removeClass("ti-minus").addClass("ti-plus");
						$("#div_reason").removeClass("show");
					}
				});
			})
			.always(() => {
				$("#btn_reason").removeAttr("disabled");
				$("#btn_reason").html("Guardar Motivo de Invalidez");
			});
	});

	$("#require_disability").on("submit", (e) => {
		e.preventDefault();
		$("#btn_require").attr("disabled", "disabled");
		$("#btn_require").html("Cargando...");
		$.ajax({
			url: "cgi/insert_general",
			method: "post",
			dataType: "json",
			data: $("#require_disability").serialize(),
		})
			.done((i) => {
				Swal.fire({
					title: "Datos generales guardados",
					text: "Los datos generales han sido guardados, Puede darle al botón de siguiente si aún no ha rellenado el Motivo de Invalidez.",
					type: "success",
					showCancelButton: true,
					confirmButtonColor: "#3085d6",
					cancelButtonColor: "#d33",
					cancelButtonText: "Cancelar",
					confirmButtonText: "Siguiente",
				}).then((result) => {
					if (result.value) {
						$("#hospital").focus();
						$("#icon_require").removeClass("ti-minus").addClass("ti-plus");
						$("#div_require").removeClass("show");
					}
				});
			})
			.always(() => {
				$("#btn_require").removeAttr("disabled");
				$("#btn_require").html("Guardar Requerimientos");
			});
	});
	$("#family_composition").on("submit", (e) => {
		e.preventDefault();
		$("#btn_family").attr("disabled", "disabled");
		$("#btn_family").html("Cargando...");
		$.ajax({
			url: "cgi/insert_general",
			method: "post",
			dataType: "json",
			data: $("#require_disability").serialize(),
		})
			.done((i) => {})
			.always(() => {
				$("#btn_family").removeAttr("disabled");
			});
	});


});
