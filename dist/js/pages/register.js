$(function () {
	$(".preloader").fadeOut();
	$(".select2").select2();
	var elems = Array.prototype.slice.call(
		document.querySelectorAll(".js-switch")
	);
	$(".js-switch").each(function () {
		new Switchery($(this)[0], $(this).data());
	});

	$("#switch_cgi").on("change", function () {
		let clickCheckbox = document.querySelector(".js-switch");
		console.log(clickCheckbox.checked);
		if(clickCheckbox.checked == true){
			$("#text_cgi").text("SÍ");
			$("#text_cgi").removeAttr("style");
			$("#text_cgi").attr("style","font-weight:bold; color:green");
		}else{
			$("#text_cgi").text("NO");
			$("#text_cgi").removeAttr("style");
			$("#text_cgi").attr("style","font-weight:bold; color:red");
		}
	});
	//Validando si existe la Cedula en BD antes de enviar el Form
	$("#cip").on("keyup", function () {
		var cip = $("#cip").val();
		var dataCip = "cip=" + cip;
		$.ajax({
			url: "site/validateCip",
			type: "GET",
			data: dataCip,
			dataType: "JSON",
			success: function (data) {
				if (data.success == 1) {
					$("#respuesta").html(data.message);
					$("input").attr("disabled", true); //Desabilito el input nombre
					$("input#cip").attr("disabled", false); //Habilitando el input cedula
					$("#btnone").attr("disabled", true); //Desabilito el Botton
					$("#cip").focus();
				} else {
					$("#respuesta").html(data.message);
					$("input").attr("disabled", false); //Habilito el input nombre
					$("#btnone").attr("disabled", false); //Habilito el Botton
					$("#cip").focus();
				}
			},
			error: function (data) {
				console.log(data["responseText"]);
			},
		});
	});
	$("#dni").on("keyup", function () {
		var dni = $("#dni").val();
		var dataDni = "dni=" + dni;
		$.ajax({
			url: "site/validateDni",
			type: "GET",
			data: dataDni,
			dataType: "JSON",
			success: function (data) {
				if (data.success == 1) {
					$("#respuestadni").html(data.message);
					$("input").attr("disabled", true); //Desabilito el input nombre
					$("input#dni").attr("disabled", false); //Habilitando el input cedula
					$("button").attr("disabled", true); //Desabilito el Botton
					$("#dni").focus();
				} else {
					$("#respuestadni").html(data.message);
					$("input").attr("disabled", false); //Habilito el input nombre
					$("button").attr("disabled", false); //Habilito el Botton
					$("#dni").focus();
				}
			},
			error: function (data) {
				console.log(data["responseText"]);
			},
		});
	});
	$("#mail").on("keyup", function () {
		var mail = $("#mail").val();
		var dataMail = "mail=" + mail;
		$.ajax({
			url: "site/validateMail",
			type: "GET",
			data: dataMail,
			dataType: "JSON",
			success: function (data) {
				if (data.success == 1) {
					$("#respuestamail").html(data.message);
					$("input").attr("disabled", true); //Desabilito el input nombre
					$("input#mail").attr("disabled", false); //Habilitando el input cedula
					$("button").attr("disabled", true); //Desabilito el Botton
					$("#mail").focus();
				} else {
					$("#respuestamail").html(data.message);
					$("input").attr("disabled", false); //Habilito el input nombre
					$("button").attr("disabled", false); //Habilito el Botton
					$("#mail").focus();
				}
			},
			error: function (data) {
				console.log(data["responseText"]);
			},
		});
	});
	$("#phone").on("keyup", function () {
		2;
		var phone = $("#phone").val();
		var dataPhone = "phone=" + phone;
		$.ajax({
			url: "site/validatePhone",
			type: "GET",
			data: dataPhone,
			dataType: "JSON",
			success: function (data) {
				if (data.success == 1) {
					$("#respuestaphone").html(data.message);
					$("input").attr("disabled", true); //Desabilito el input nombre
					$("input#phone").attr("disabled", false); //Habilitando el input cedula
					$("button").attr("disabled", true); //Desabilito el Botton
					$("#phone").focus();
				} else {
					$("#respuestaphone").html(data.message);
					$("input").attr("disabled", false); //Habilito el input nombre
					$("button").attr("disabled", false); //Habilito el Botton
					$("#nxt_2").attr("disabled", false); //Habilito el Botton
					$("#phone").focus();
				}
			},
			error: function (data) {
				console.log(data["responseText"]);
			},
		});
	});
});

$(document).ready(() => {
	$("#msform").on("submit", (e) => {
		e.preventDefault();
		var f = $(this);

		let formData = new FormData(document.getElementById("msform"));
		formData.append("dato", "valor");
		let check = $("#chk").prop("checked"),
			txt = $("#msform").find(':input[type="text"]'),
			phone = $("#phone").val();

		if (check) {
			$.ajax({
				url: "site/initReg",
				type: "post",
				dataType: "json",
				data: formData,
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: () => {
					$("#anterior").attr("disabled", "disabled");
					$("#anterior").attr("type", "hidden");
					$("#register").attr("disabled", "disabled");
					$("#register").attr("value", "Guardando .....");
				},
			})
				.done((res) => {
					if ((res.status = 1)) {
						$(location).attr("href", window.location.origin);
					} else {
						alert(res.error);
					}
				})
				.fail((res) => {
					alert(res);
				});
		} else {
			Msg("Error", "Acepte la Política de Privacidad", "#ff6849", "error");
		}
	});
});

function Msg(d, f, g, h) {
	$.toast({
		heading: d,
		text: f,
		position: "top-right",
		loaderBg: g,
		icon: h,
		hideAfter: 3600,
		stack: 1,
	});
}
