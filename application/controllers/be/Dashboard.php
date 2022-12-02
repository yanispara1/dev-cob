<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{

	public function __construct()
	{

		parent::__construct();
		check_login_user();
		$this->load->model('Be_model');
	}

	public function index()
	{
		$data['title'] = 'Registros';
		$data['links'] = array();
		$data['scripts'] = array(
			'<script src="' . base_url() . 'dist/js/pages/dashboard-be.js"></script>'

		);

		$u = $this->Be_model->record('tbl_data_univ');
		$i = $this->Be_model->record('tbl_data_institute');
		$b = $this->Be_model->record('tbl_data_britanico');
		$t = $u + $i + $b;

		$record = array(
			'das' => $t,
			'dace' => $this->Be_model->record('tbl_form_dace')
		);

		$data['record'] = $record;

		$data['list'] = $this->Be_model->list_dace();

		$data['univ'] = $this->Be_model->get_univ_list();
		$data['inst'] = $this->Be_model->get_inst_list();
		$data['brit'] = $this->Be_model->get_brit_list();

		$this->template->load('be/template', 'be/dashboard', $data);
	}

	public function resolution($id)
	{
		$a = $this->Be_model->getRes(array("id_resolution" => $id));

		if ($a->type = 1) {
			$b = $this->Be_model->get_univ_list(array("id_univ" => $a->id_procedure));
			$data['a'] = $a;
			$data['b'] = $b;
		}

		$this->load->view("be/pages/resolution", $data);
	}

	public function getTramite()
	{
		$id = $this->input->post('id');
		$type = $this->input->post('type');
		$jsonData = array();


		if ($type == 1) {
			$row =  $this->Be_model->get_univ_list(array('id_univ' => $id));
			$jsonData['row'] = $row;
			$jsonData['dni'] = $this->encryption->decrypt($row->dni_user);
			$jsonData['dni_p'] = $this->encryption->decrypt($row->dni_user);
		}

		header('Content-type: application/json; charset=utf-8');
		echo json_encode($jsonData);
	}

	public function upResolution()
	{
		$data = array(
			"id_procedure" => $this->input->post('id'),
			"adress_name" => $this->input->post('a'),
			"range_res" => $this->input->post('b'),
			"issue_res" => $this->input->post('c'),
			"ref_res" => $this->input->post('d'),
			"date" => date(DATE_W3C),
			"type_res" => $this->input->post('type'),
		);
		$q = $this->Be_model->insert($data, 'tbl_resolution');

		$jsonData["id"] = $q;
		$jsonData["col"] = $this->input->post('id');

		header('Content-type: application/json; charset=utf-8');
		echo json_encode($jsonData);
	}

	public function logout()
	{

		$array_items = array('user_id', 'user_type', 'user_name', 'user_email', 'user_phone', 'user_cip', 'user_dni', 'is_user_login');

		$this->session->unset_userdata($array_items);

		if (isset($_SERVER['HTTP_REFERER']))
			redirect($_SERVER['HTTP_REFERER']);
		else
			redirect('/', 'refresh');
	}
}
