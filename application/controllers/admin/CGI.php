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
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/cgi.js"></script>'
        );
        $this->template->load('admin/template', 'admin/cgi/data_additional', $data);
    }
    public function data_ubigeo()
    {
        $result = $this->CGI_model->get_data('sunat_codigoubigeo', NULL);
        $jsonData['rows'] = $result;

        echo json_encode($jsonData);
    }
}
