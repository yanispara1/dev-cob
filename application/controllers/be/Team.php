<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Team extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();
        check_login_user();
        $this->load->model('Team_model');
    }

    public function index()
    {
        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/multiselect/css/multi-select.css"">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/multiselect/js/jquery.multi-select.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/teams.js"></script>',

        );

        $data['title'] = 'Equipos';
        $data['rows'] = $this->Team_model->get_data(null);
        $this->template->load('be/template', 'be/pages/teams', $data);
    }
    public function solo()
    {
        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/magnific-popup.css" rel="stylesheet">',
            '<link href="' . base_url() . 'dist/css/pages/user-card.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"></script>',

        );
        $data['rol'] = $this->Team_model->get_data(array('id_rol' => $this->session->userdata('user_type')));
        
        $data['dep'] = $this->Team_model->get_users(array('rol' => $this->session->userdata('user_type')));

        $data['title'] = 'Equipos';
        $this->template->load('be/template', 'be/pages/team', $data);
    }
    public function teamIn()
    {
        $name = $this->input->post('n');
        $des = $this->input->post('d');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $jsonData = array();
        $data = array(
            'name_rol' => $name,
            'descr_rol' => $des,
            'jefe_rol' => $j_dp,
            'array_int' => json_encode($m)
        );
        $qy = $this->Team_model->insert($data, 'tbl_rol');
        if ($qy) {
            foreach ($m as $key) {
                $this->Team_model->update(array('rol' => $qy), array("id_user" => $key), 'tbl_users');
            }
            $jsonData['rsp'] = 200;
            $jsonData['id'] = $qy;
            unset($data);
        } else {
            $jsonData['rsp'] = 400;
        }

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function teamUp()
    {
        $name = $this->input->post('n');
        $des = $this->input->post('d');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $id = $this->input->post('i');
        $jsonData = array();

        $rol = $this->Team_model->get_data(array('id_rol' => $id));

        $data = array(
            'name_rol' => $name,
            'descr_rol' => $des,
            'jefe_rol' => $j_dp,
            'array_int' => json_encode($m)
        );
        $qy = $this->Team_model->update($data, array("id_rol" => $id), 'tbl_rol');
        $result = array_diff(json_decode($rol->array_int), $m);

        if (count($result) > 0) {
            foreach ($result as $key) {
                $this->Team_model->update(array('rol' => '2'), array("id_user" => $key), 'tbl_users');
            }
        }

        foreach ($m as $key) {
            $this->Team_model->update(array('rol' => $id), array("id_user" => $key), 'tbl_users');
        }
        $jsonData['rsp'] = 200;
        $jsonData['array'] = $result;
        $jsonData['id'] = $qy;
        unset($data);

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function getUser()
    {
        $jsonData['users'] = $this->Team_model->get_users(null);
        $jsonData['rols'] = $this->Team_model->get_rol();
        $jsonData['rol'] = $this->Team_model->get_data(array('id_rol' => $this->input->post('id')));
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function dep_user()
    {
        $id = $this->input->post('id');
        $jsonData['dep'] = $this->Team_model->get_users(array('rol' => $id));
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function delTeam()
    {
        $id_rol = $this->input->post('id');

        $rs = $this->Team_model->get_data(array('id_rol' => $id_rol));
        $m = json_decode($rs->array_int);
        foreach ($m as $key) {
            $this->Team_model->update(array('rol' => '2'), array("id_user" => $key), 'tbl_users');
        }
        $qy = $this->Team_model->delete(array('id_rol' => $id_rol), 'tbl_rol');

        $jsonData['rsp'] = $qy;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
