$(function () {
	let mybase_url = $("#url_base").val();
	let id = $("#id").val();
	$("#civil_status, #condition_staff, #group_occup").select2();
	let grade_staff = $("#grade_staff").select2({
		placeholder: "Buscar Grado",
		minimumInputLength: 1,
		ajax: {
			url: mybase_url + "be/staff/data_grade",
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
			url: mybase_url + "be/staff/data_specialty",
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
			url: mybase_url + "be/staff/data_origin",
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

	$.ajax({
		url: mybase_url + "be/staff/data_personal",
		method: "post",
		dataType: "json",
		data: { id: id },
		beforeSend: () => {},
	})
		.done((i) => {
			let row = i.row;
			row.forEach((row) => {
				$("#n_staff").val(row.name_staff);
				$("#ls_staff").val(row.lastname_staff);
				$("#cip").val(row.cip_staff);
				$("#dni").val(row.dni_staff);
				$("#place_birth").val(row.place_staff);
				$("#date_birth").val(row.birthday_staff);
				$("#home_address").val(row.address);
				$("#cell_holder").val(row.cell_holder);
				$("#civil_status > option[value=" + row.status_staff + "]").attr(
					"selected",
					"selected"
				);
				$("#number_children").val(row.sons_staff);
				$("#condition_staff > option[value=" + row.condition_staff + "]").attr(
					"selected",
					"selected"
				);
				$("#date_contracted").val(row.hired_staff);
				$("#date_named").val(row.named_staff);
				$("#date_ascent").val(row.ascent_staff);
				$("#group_occup > option[value=" + row.ocupation_staff + "]").attr(
					"selected",
					"selected"
				);
				$("#position").val(row.position_staff);
				$("#grade_staff").append(
					"<option value='" +
						row.grade_staff +
						"'>" +
						row.name_grade_staff +
						"</option>"
				);
				$("#unit_staff").append(
					"<option value='" + row.unit_staff + "'>" + row.name_rol + "</option>"
				);
				$("#speciality").append(
					"<option value='" +
						row.specialty_staff +
						"'>" +
						row.name_specialty +
						"</option>"
				);
			});
		})
		.fail((err) => {
			console.log(err.responseText);
		});

	$("#send_personal").on("submit", (e) => {
		e.preventDefault();
		$("#btn_send").attr("disabled", "disabled");
		$("#btn_send").html("Cargando...");
		$.ajax({
			url: mybase_url + "be/staff/edt_personal",
			method: "post",
			dataType: "json",
			data: $("#send_personal").serialize(),
		})
			.done((i) => {
				successMsg(
					"Personal Civil Editado",
					"Personal civil editado corretamente",
					"#ff6849",
					"success"
				);
			})
			.always(() => {
				$("#btn_send").removeAttr("disabled");
				$("#btn_send").html("Guardar Personal");
			})
			.fail((e) => {
				console.log(err.responseText);
				successMsg(
					"Error",
					"Porfavor Informar sobre este error",
					"#ff6849",
					"error"
				);
			});
	});
});
