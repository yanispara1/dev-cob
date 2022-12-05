<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Users extends CI_Controller
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


        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/user.js"></script>',

        );
        $data['rows'] = $this->Be_model->get_data();

        $this->template->load('be/template', 'be/pages/users', $data);
    }

    public function posRol()
    {
        $id = $this->input->post('id');
        $jsonData = array();
        
        $user = $this->Be_model->get_data(array('id_user' => $id));
        $jsonData['name'] = $user->name_user . " ". $user->lastname_user;
        $jsonData['rows'] = $this->Be_model->get_record(null,'tbl_rol');
        
        $jsonData['rol'] = $user->rol;

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function modRol()
    {
        $slc = $this->input->post('id_slct');
        $user = $this->input->post('id_user');
        $jsonData = array();
        
        $row = $this->Be_model->update(array('rol' => $slc), array("id_user" => $user), 'tbl_users');
        $jsonData['success'] = 1;



        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function posStatus()
    {
        $id = $this->input->post('id');
        $jsonData = array();
        
        $user = $this->Be_model->get_data(array('id_user' => $id));
        $jsonData['name'] = $user->name_user . " ". $user->lastname_user;
        $jsonData['rol'] = $user->val_user;
        $jsonData['rows'] = $this->Be_model->get_record(null,'tbl_status');


        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function modStatus()
    {
        $slc = $this->input->post('id_slct');
        $user = $this->input->post('id_user');
        $jsonData = array();
        
        $row = $this->Be_model->update(array('val_user' => $slc), array("id_user" => $user), 'tbl_users');
        $jsonData['success'] = 1;



        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
