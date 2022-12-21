$(function () {
	"use strict";
	$(".input_numb").on("input", function () {
		this.value = this.value.replace(/[^0-9.]/g, "");
	});
	$(".input_txt").on("input", function () {
		this.value = this.value.replace(/[^a-zA-Z ]/g, "");
	});
});
