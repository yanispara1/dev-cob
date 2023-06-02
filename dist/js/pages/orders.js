$(function () {
	let frm = $("#frm_status"),
		textarea_c = $(".textarea_editor").wysihtml5();
	$(".select2").select2({
		dropdownParent: $("#mdl_frm .mdl_bdy"),
	});
	let t = $("#data-orders").DataTable({
		order: [[0, "desc"]],
	});

	$("#btn_frm").click(() => {
		$("#mdl_frm").modal("show");
	});

	$("#btn_send").click((e) => {
		e.preventDefault();
		let textarea_v = $(".textarea_editor").val(),
			status_v = $("#name_status").val(),
			order_id = $("#id_order").text();

		$.ajax({
			url: "orders/save_status",
			type: "post",
			dataType: "json",
			data: { txt_v: textarea_v, status_v: status_v, id_order: order_id },
			beforeSend: () => {},
		})
			.done((r) => {
				let val = r.num_rows % 2 ? "timeline-inverted" : "",
					color = style_status(status_v)["color"],
					title = style_status(status_v)["title"],
					icon = style_status(status_v)["icon"];

				$("#timeline").append(
					'<li class="' +
						val +
						' items">' +
						'<div class="timeline-badge ' +
						color +
						'">' +
						'<i class="' +
						icon +
						'"></i>' +
						"</div>" +
						'<div class="text-white bg-' +
						color +
						' timeline-panel ">' +
						'<div class="timeline-heading">' +
						'<h3 class="timeline-title">' +
						title +
						"</h3>" +
						"<p>" +
						'<small class="text-muted">' +
						'<i class="fa fa-clock-o"></i>' +
						get_date(r.sts_date) +
						"</small>" +
						"</p>" +
						"</div>" +
						' <div class="timeline-body">' +
						textarea_v +
						"</div>" +
						"</div>" +
						"</li>"
				);

				$("#mdl_frm").modal("hide");
				$(".textarea_editor").data("wysihtml5").editor.clear();

				successMsg(
					"Estado Agregado",
					"Nuevo Estado agregado corretamente",
					"#ff6849",
					"success"
				);
			})
			.fail(() => {
				successMsg(
					"Estado Fallid",
					"El estado no se ha guardado",
					"#ff6849",
					"error"
				);
			});
	});
	$("#close_status").click(() => {
		$("#mdl_frm").modal("hide");
		$(".textarea_editor").data("wysihtml5").editor.clear();
	});

	$("#btn_close").click(() => {
		$("#mdl_status").modal("hide");
		$(".items").remove();
	});
});
function edit(id_order) {
	$("#id_order").text(id_order);
	$("#mdl_status").modal({
		backdrop: "static",
		keyboard: false,
	});

	let ul = $("#timeline");
	$.ajax({
		url: "orders/order_status",
		type: "post",
		dataType: "json",
		data: { id: id_order },
		beforeSend: () => {
			$(".loading").removeAttr("style", "display:none");
		},
	})
		.done((a) => {
			let status = a.rows,
				cont = 0;

			status.forEach((row) => {
				cont++;
				let val = cont % 2 ? "" : "timeline-inverted",
					color = style_status(row.name_statuso)["color"],
					title = style_status(row.name_statuso)["title"],
					icon = style_status(row.name_statuso)["icon"];

				$("#timeline").append(
					'<li class="' +
						val +
						' items">' +
						'<div class="timeline-badge ' +
						color +
						'">' +
						'<i class="' +
						icon +
						'"></i>' +
						"</div>" +
						'<div class="text-white bg-' +
						color +
						' timeline-panel ">' +
						'<div class="timeline-heading">' +
						'<h3 class="timeline-title">' +
						title +
						"</h3>" +
						"<p>" +
						'<small class="text-muted">' +
						'<i class="fa fa-clock-o"></i>' +
						get_date(row.register_statuso) +
						"</small>" +
						"</p>" +
						"</div>" +
						' <div class="timeline-body">' +
						"<p>" +
						row.desc_statuso +
						"</p>" +
						"</div>" +
						"<br><button class='btn btn-secondary btn-rounded'><i class='fas fa-edit'></i> Editar</button> <button class='btn btn-dark btn-rounded'><i class='fas fa-edit'></i> Eliminar</button></div>" +
						"</li>"
				);
			});

			$("#mdl_status").modal("show");
		})
		.always(() => {
			$(".loading").attr("style", "display:none");
		});
}
function style_status(name) {
	switch (name) {
		case "01":
			return {
				title: "PENDIENTE",
				icon: "fas fa-eye-slash",
				color: "warning",
			};
			break;
		case "02":
			return {
				title: "EN PROCESO",
				icon: "fas fa-hourglass-half",
				color: "info",
			};
			break;
		case "03":
			return {
				title: "FINALIZADO",
				icon: "fas fa-check-square",
				color: "success",
			};
			break;
		case "04":
			return {
				title: "CANCELADO",
				icon: "fas fa-times-circle",
				color: "danger",
			};
			break;
		default:
			break;
	}
}
