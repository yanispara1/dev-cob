$(function () {
	$("#data-users").DataTable({
		responsive: true,
		ordering: true,
	});
	$("#close").on("click", function () {
		$(".mdl_range").fadeOut();
		$(".select2").empty();
	});
	$("#close_sts").on("click", function () {
		$(".mdl_status").fadeOut();
		$("#slct_sts").empty();
	});

	$(".buttons-pdf, .buttons-excel").addClass("btn btn-success me-1");

	$("#btn_modify").on("click", function () {
		const select = $("#slct_rol").val();
		const selecttext = $("#slct_rol option:selected").html();
		const user = $("#id_user").val();
		const name = $("#name_user").val();
		console.log(selecttext);
		$.ajax({
			method: "post",
			url: "users/modRol",
			data: { id_slct: select, id_user: user },
			dataType: "json",
		}).done((res) => {
			if (res.success == 1) {
				$("#data-users")
					.find("tbody")
					.find("td")
					.each(function () {
						if ($(this).attr("id") == "d" + user) {
							$("#d" + user).text(selecttext);
						}
					});
				$(".mdl_range").fadeOut();
				$(".select2").empty();

				successMsg(
					"Rol Modificado",
					"Rol Modificado del usuario " + name,
					"#ff6849",
					"success"
				);
			}
		});
	});

	$("#btn_msts").on("click", function () {
		const select = $("#slct_sts").val();
		const selecttext = $("#slct_sts option:selected").html();
		const user = $("#user").val();
		const name = $("#name").val();
		console.log(selecttext);
		$.ajax({
			method: "post",
			url: "users/modStatus",
			data: { id_slct: select, id_user: user },
			dataType: "json",
		}).done((res) => {
			if (res.success == 1) {
				if (select == 1) {
					color = "badge bg-warning rounded-pill";
				} else if (select == 2) {
					color = "badge bg-success rounded-pill";
				} else {
					color = "badge bg-danger rounded-pill";
				}
				$("#g" + user).text(selecttext);
				$("#g" + user).removeClass();
				$("#g" + user).addClass(color);
				$(".mdl_status").fadeOut();
				$("#slct_sts").empty();

				successMsg(
					"Estado Modificado",
					"Estado Modificado del usuario " + name,
					"#ff6849",
					"success"
				);
			}
		});
	});
});

function range(a) {
	const select = $("#slct_rol");
	$.ajax({
		method: "post",
		url: "users/posRol",
		data: { id: a },
		dataType: "json",
	}).done((data) => {
		let name = data.name;
		name = name.toUpperCase();
		$("#lbl_user").text(name);
		$("#id_user").val(a);
		$("#name_user").val(name);
		for (let i = 0; i < data.rows.length; i++) {
			let id = data.rows[i]["id_rol"];
			let name = data.rows[i]["name_rol"];
			if (id == data.rol) {
				select.append(
					'<option selected value="' + id + '">' + name + "</option>"
				);
			} else {
				select.append('<option value="' + id + '">' + name + "</option>");
			}
		}
	}); 

	$(".select2").select2({
		dropdownParent: $(".mdl_range .modal-body"),
	});
	$(".mdl_range").fadeIn();
}

function status(a) {
	const select = $("#slct_sts");
	$.ajax({
		method: "post",
		url: "users/posStatus",
		data: { id: a },
		dataType: "json",
	}).done((data) => {
		let name = data.name;
		name = name.toUpperCase();
		$("#lbl_nsts").text(name);
		$("#user").val(a);
		$("#name").val(name);
		for (let i = 0; i < data.rows.length; i++) {
			let id = data.rows[i]["id_status"];
			let name = data.rows[i]["name_status"];
			if (id == data.rol) {
				select.append(
					'<option selected value="' + id + '">' + name + "</option>"
				);
			} else {
				select.append('<option value="' + id + '">' + name + "</option>");
			}
		}
	});

	$("#slct_sts").select2({
		dropdownParent: $(".mdl_status .modal-body"),
	});
	$(".mdl_status").fadeIn();
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
