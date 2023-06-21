$(function () {


	$("#civil_status, #condition_staff, #group_occup").select2();
	$("#grade_staff").select2({
		placeholder: "Buscar Grado",
		minimumInputLength: 1,
		ajax: {
			url: "staff/data_grade",
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
	$("#speciality").select2({
		placeholder: "Buscar Especialidad",
		minimumInputLength: 1,
		ajax: {
			url: "staff/data_specialty",
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
	$("#unit_staff").select2({
		placeholder: "Buscar Unidad de Origen",
		minimumInputLength: 2,
		ajax: {
			url: "staff/data_origin",
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
	$("#send_personal").on("submit", (e) => {
		e.preventDefault();
		$("#btn_send").attr("disabled", "disabled");
		$("#btn_send").html("Cargando...");
		$.ajax({
			url: "staff/up_personal",
			method: "post",
			dataType: "json",
			data: $("#send_personal").serialize(),
		})
			.done((i) => {
				successMsg(
					"Personal Civil Agregado",
					"Nuevo personal civil agregado corretamente",
					"#ff6849",
					"success"
				);
			})
			.always(() => {
				$("#btn_send").removeAttr("disabled");
				$("#btn_send").html("Guardar Personal...");
			});
	});
});
