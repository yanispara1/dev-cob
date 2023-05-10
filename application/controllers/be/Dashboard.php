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

	public function dace()
	{
		
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
	}

	public function index()
	{
		$data['title'] = 'Inicio Administrador';
		$data['links'] = array();
		$data['scripts'] = array(
			'<script src="' . base_url() . 'dist/js/pages/dashboard-be.js"></script>'

		);


		$this->template->load('be/template', 'be/init', $data);
	}

	public function resolution($id)
	{
		$a = $this->Be_model->getRes(array("id_resolution" => $id));
		$data['a'] = $a;

		if ($a->type_res == 1) {
			$b = $this->Be_model->get_univ_list(array("id_univ" => $a->id_procedure));
			$data['last_fam'] = $b->uni_last_fam;
			$data['name_fam'] = $b->uni_name_fam;
			$data['cift_fam'] = $b->uni_cift_fam;
			$data['specialty'] = $b->uni_specialty;
			$data['b'] = $b;
		} elseif ($a->type_res == 2) {
			$b = $this->Be_model->get_inst_list(array("id_ins" => $a->id_procedure));
			$data['b'] = $b;
			$data['last_fam'] = $b->ins_name_fam;
			$data['name_fam'] = $b->ins_last_fam;
			$data['cift_fam'] = $b->ins_cift_fam;
			$data['specialty'] = $b->ins_specialty;
		} elseif ($a->type_res == 3) {
			$b = $this->Be_model->get_brit_list(array("id_bri" => $a->id_procedure));
			$data['b'] = $b;
			$data['last_fam'] = $b->bri_name_fam;
			$data['name_fam'] = $b->bri_last_fam;
			$data['cift_fam'] = $b->bri_cift_fam;
			$data['specialty'] = $b->bri_specialty;
		}

		$this->load->view("be/pages/resolution", $data);
	}

	public function getTramite()
	{
		$id = $this->input->post('id');
		$type = $this->input->post('type');
		$jsonData = array();

		$r = $this->Be_model->getResNum(array('id_procedure' => $id, 'type_res' => $type));
		$jsonData['go'] = $r;

		if ($r == 1) {
			$g = $this->Be_model->getRes(array('id_procedure' => $id, 'type_res' => $type));
			$jsonData['t'] = $g;

			$jsonData['idres'] = $g->id_resolution;
		}
		if ($type == 1) {
			$row =  $this->Be_model->get_univ_list(array('id_univ' => $id));
			$jsonData['specialty'] = $row->uni_specialty;
			$jsonData['person'] = $row->person;
			$jsonData['lastname_user'] = $row->lastname_user;
			$jsonData['name_user'] = $row->name_user;
			$jsonData['last_fam'] = $row->uni_last_fam;
			$jsonData['name_fam'] = $row->uni_name_fam;
			$jsonData['cift_fam'] = $row->uni_cift_fam;
			$jsonData['relationship'] = $row->relationship;
			$jsonData['name_range'] = $row->name_range;
			$jsonData['dni'] = $this->encryption->decrypt($row->dni_user);
		} else if ($type == 2) {
			$row =  $this->Be_model->get_inst_list(array('id_ins' => $id));
			$jsonData['specialty'] = $row->ins_specialty;
			$jsonData['person'] = $row->person;
			$jsonData['lastname_user'] = $row->lastname_user;
			$jsonData['name_user'] = $row->name_user;
			$jsonData['last_fam'] = $row->ins_name_fam;
			$jsonData['name_fam'] = $row->ins_last_fam;
			$jsonData['cift_fam'] = $row->ins_cift_fam;
			$jsonData['relationship'] = $row->relationship;
			$jsonData['name_range'] = $row->name_range;
			$jsonData['dni'] = $this->encryption->decrypt($row->dni_user);
		} else if ($type == 3) {
			$row =  $this->Be_model->get_brit_list(array('id_bri' => $id));
			$jsonData['specialty'] = $row->bri_specialty;
			$jsonData['person'] = $row->person;
			$jsonData['lastname_user'] = $row->lastname_user;
			$jsonData['name_user'] = $row->name_user;
			$jsonData['last_fam'] = $row->bri_name_fam;
			$jsonData['name_fam'] = $row->bri_last_fam;
			$jsonData['cift_fam'] = $row->bri_cift_fam;
			$jsonData['relationship'] = $row->relationship;
			$jsonData['name_range'] = $row->name_range;
			$jsonData['dni'] = $this->encryption->decrypt($row->dni_user);
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

	public function modResolution()
	{
		$data = array(
			'adress_name' => $this->input->post('a'),
			'range_res' => $this->input->post('b'),
			'issue_res' => $this->input->post('c'),
			'ref_res' => $this->input->post('d')
		);

		$r = $this->Be_model->update($data, array('id_resolution' => $this->input->post('h')), 'tbl_resolution');

		$jsonData['r'] = $this->input->post('h');
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
	public function example()
	{
		$this->load->view('email');
	}
}
