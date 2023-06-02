$(function () {
	date = moment().format("DD/MM/YYYY");
	$(
		"#birth_date, #date_contracted, #date_named, #date_ascent"
	).bootstrapMaterialDatePicker({
		weekStart: 0,
		time: false,
		format: "DD/MM/YYYY",
	});
	$("#birth_date").val(date);
	$("#date_contracted").val(date);
	$("#date_ascent").val(date);
	$("#grade_staff").select2();
	$(
		"#grade_staff, #unit_staff, #civil_status, #condition_staff,#group_occup,#speciality"
	).select2();
});
