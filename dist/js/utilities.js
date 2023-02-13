$(function () {
	"use strict";
	let base_url = "<?= base_url(); ?>";
	$(".input_numb").on("input", function () {
		this.value = this.value.replace(/[^0-9.]/g, "");
	});
	$(".input_txt").on("input", function () {
		this.value = this.value.replace(/[^a-zA-Z ]/g, "");
	});
});
var base_url = 'http://localhost/dev-cob/';


/* Whatsapp Chat Widget by www.idblanter.com */

$(document).on("click", "#send-it", function () {
	var a = document.getElementById("chat-input");
	if ("" != a.value) {
		var b = $("#get-number").text(),
			c = document.getElementById("chat-input").value,
			d = "https://web.whatsapp.com/send",
			e = b,
			f = "&text=" + c;
		if (
			/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(
				navigator.userAgent
			)
		)
			var d = "whatsapp://send";
		var g = d + "?phone=" + e + f;
		window.open(g, "_blank");
	}
}),
	$(document).on("click", ".informasi", function () {
		(document.getElementById("get-number").innerHTML = $(this)
			.children(".my-number")
			.text()),
			$(".start-chat,.get-new").addClass("show").removeClass("hide"),
			$(".home-chat,.head-home").addClass("hide").removeClass("show"),
			(document.getElementById("get-nama").innerHTML = $(this)
				.children(".info-chat")
				.children(".chat-nama")
				.text()),
			(document.getElementById("get-label").innerHTML = $(this)
				.children(".info-chat")
				.children(".chat-label")
				.text());
	}),
	$(document).on("click", ".close-chat", function () {
		$("#whatsapp-chat").addClass("hide").removeClass("show");
	}),
	$(document).on("click", ".blantershow-chat", function () {
		$("#whatsapp-chat").addClass("show").removeClass("hide");
	});

function getFileExt(filename) {
	return filename.slice(((filename.lastIndexOf(".") - 1) >>> 0) + 2);
}

function dangerAlert() {
	Swal.fire({
		type: "error",
		title: "Oops...",
		text: "Seleccione una Imagen por favor",
	});
}
function successMsg(d, f, g, h) {
	$.toast({
		heading: d,
		text: f,
		position: "top-right",
		loaderBg: g,
		icon: h,
		hideAfter: 3500,
		stack: 1,
	});
}
