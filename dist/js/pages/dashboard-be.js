$(function () {


	$("#data-das").DataTable({
		ordering: true,
		responsive: true,
		dom: "Bfrtip",
		buttons: ["excel", "pdf"],
	});
	$("#data-dace").DataTable({
		ordering: true,
		dom: "Bfrtip",
		buttons: ["excel", "pdf"],
	});
	$(".buttons-pdf, .buttons-excel").addClass("btn btn-success me-1");

});