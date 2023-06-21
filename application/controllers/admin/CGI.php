<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CGI extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();
        check_login_user();
        $this->load->model('Das_model');
        $this->load->model('CGI_model');
    }

    public function index()
    {

        $data['title'] = 'Datos Adicionales';

        $data['range'] = $this->Das_model->auth_row('tbl_ranges', array('id_range' => $this->session->userdata('user_range')));

        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'dist/css/pages/stylish-tooltip.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">',
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>',

            '<script src="' . base_url() . 'dist/js/pages/cgi.js"></script>'
        );
        $this->template->load('admin/template', 'admin/cgi/data_additional', $data);
    }
    public function data_ubigeo()
    {
        $val = $_GET['q'];
        $result = $this->CGI_model->get_data('sunat_codigoubigeo', $val);
        if ($result != null) {
            foreach ($result as $row) {
                $id = $row->codigo_ubigeo;
                $text = $row->departamento . " - " . $row->provincia . " - " . $row->distrito;
                $data[] = array('id' => $id, 'text' => $text);
            }
        } else {
            $data[] = array('id' => 0, 'text' => 'No se enconto Ubigeo');
        }
        echo json_encode($data);
    }
    public function insert_general()
    {
        $data = array(
            "user_cip" => $this->session->userdata("cip_md5"),
            "birthday_cgi" => $this->input->post("birthdate"),
            "home_phone" => $this->input->post("home_phone"),
            "current_ocupation" => $this->input->post("current_oc"),
            "conadis_did" => $this->input->post("conadis_did"),
            "level_education" => $this->input->post("level_education"),
            "civil_status" => $this->input->post("civil_status"),
            "size_cgi" => $this->input->post("size"),
            "cash_type" => $this->input->post("type_cash"),
            "ubigeous_birth" => $this->input->post("ubigeo_birthday"),
            "housing_ubigeo" => $this->input->post("ubigeo_home"),
            "high_resolution" => $this->input->post("cgi_date"),
            "situation_cgi" => $this->input->post("situation")
        );
        $jsonData = $data;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function insert_reason()
    {
        $data = array(
            'user_cip' => $this->session->userdata("cip_md5"),
            'causal' => $this->input->post('tb_ca'),
            'event' => $this->input->post('events_ej'),
            'invalidity_date' => $this->input->post('invalidate'),
            'accident_site' => $this->input->post('accident_site'),
            'diagnosis' => $this->input->post('tb_di'),
        );
        $jsonData = $data;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
