<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Consulta extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Order_model');
	}

	public function index()
	{
		$this->load->view('korekenke/header');
		$this->load->view('korekenke/consulta');
		$this->load->view('korekenke/footer');
	}
	public function enviar()
	{
		$ep = $this->input->post('equipo');
		$pp = $this->input->post('problema');
		$name = $this->input->post('name');
		$dpto = $this->input->post('dpto');
		$phone = $this->input->post('phone');
		$fecha = date(DATE_W3C);

		$data = array(
			'ep_order' => $ep,
			'pp_order' => $pp,
			'name_order' => $name,
			'dpto_order' => $dpto,
			'phone_order' => $phone,
			'register_order' => $fecha,
			'line_order' => '01'
		);

		$result = $this->Order_model->insert($data, 'tbl_orders_services');


		$data = array(
			'name_statuso' => '01',
			'register_statuso' => date(DATE_W3C),
			'desc_statuso' => 'Nueva Orden',
			'order' => $result
		);

		$this->Order_model->insert($data, 'tbl_orders_status');


		if ($result) {

			$subject = "Consultas COEDE";

			$emailsSend = ["beto1perk@gmail.com", "valenestradam1@gmail.com"];

			$to = "$emailsSend[0]";

			$message = "
		    <html>
		    <head><meta charset='gb18030'>
		        <title>Consultas COEDE</title>
		    </head>
		    <body>
		    <p>Este <strong>mensaje de consulta</strong> fue enviado desde  https://servitec-allinone.site/</p>
		    <table style='margin:0!important'>
		        <tr>
		        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Nombres y Apellidos:</b></td>
		        <td style='margin:0!important;border:1px solid #444;padding:8px;'>" . $name . "</td>
		        </tr>
		        <tr>
		        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>EQUIPO A REPARAR:</b></td>
		        <td style='margin:0!important;border:1px solid #444;padding:8px;'>" . $ep . "</td>
		        </tr>
		        <tr>
		        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>PROBLEMA QUE PRESENTA:</b></td>
		        <td style='margin:0!important;border:1px solid #444;padding:8px;'>" . $pp . "</td>
		        </tr>
		        <tr>
		        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Cell:</b></td>
		        <td style='margin:0!important;border:1px solid #444;padding:8px;'>" . $phone . "</td>
		        </tr>
		        <tr>
		        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Dpto o Uni贸n:</b></td>
		        <td style='margin:0!important;border:1px solid #444;padding:8px;'>" . $dpto . "</td>
		        </tr>

		    </table>
		    </body>
		    </html>
		    ";
			$headers =  'MIME-Version: 1.0' . "\r\n";
			$headers .= 'From: Your name <info@address.com>' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

			mail($to, $subject, $message, $headers);



			echo "<script>
						alert('Enviado Correctamente');
						location.href = 'https://korekenke.cobiene.mil.pe/';
							</script>";
		} else {
			echo "GG";
			// code...
		}
	}
}
