$(function () {
	"use strict";

	$("#tb_as").autoResize();

	$("#ubigeo_birthday, #ubigeo_home, #ubigeo_atencion").select2({
		placeholder: "Buscar Código de Ubigeo",
	});

	$.ajax({
		url: "cgi/data_ubigeo",
		method: "POST",
		dataType: "json",
	}).done((data) => {
		let rows = data.rows;
		rows.forEach((row) => {
			$("#ubigeo_birthday, #ubigeo_home, #ubigeo_atencion").append(
				"<option vlaue='" +
					row.codigo_ubigeo +
					"'>" +
					row.departamento +
					" - " +
					row.provincia +
					" - " +
					row.distrito +
					"</option>"
			);
		});
	});

	$("#general_data").on("submit", (e) =>{
		e.preventDefault();
		
		

	})

});
