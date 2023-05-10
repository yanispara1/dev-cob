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

        $data['title'] = 'Departamentos';
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
        $js_dp = $this->input->post('js');
        $core = $this->input->post('core');
        $jsonData = array();
        $data = array(
            'name_rol' => $name,
            'descr_rol' => $des,
            'jefe_rol' => $j_dp,
            'subjefe_rol' => $js_dp,
            'core_rol' => $this->session->userdata('core'),
            'array_int' => json_encode($m)
        );
        $qy = $this->Team_model->insert($data, 'tbl_rol');
        if ($qy) {
            foreach ($m as $key) {
                $this->Team_model->update(array('rol' => $qy, 'core' => $this->session->userdata('core')), array("id_user" => $key), 'tbl_users');
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
        $js_dp = $this->input->post('js');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $id = $this->input->post('i');
        $core = $this->input->post('core');
        $jsonData = array();

        $rol = $this->Team_model->get_data(array('id_rol' => $id));

        $data = array(
            'name_rol' => $name,
            'descr_rol' => $des,
            'subjefe_rol' => $js_dp,
            'jefe_rol' => $j_dp,
            'core_rol' => $this->session->userdata('core'),
            'array_int' => json_encode($m)
        );
        $qy = $this->Team_model->update($data, array("id_rol" => $id), 'tbl_rol');
        $result = array_diff(json_decode($rol->array_int), $m);

        if (count($result) > 0) {
            foreach ($result as $key) {
                $this->Team_model->update(array('rol' => '2', 'core' => '0'), array("id_user" => $key), 'tbl_users');
            }
        }

        foreach ($m as $key) {
            $this->Team_model->update(array('rol' => $id, 'core' => $this->session->userdata('core')), array("id_user" => $key), 'tbl_users');
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
        $jsonData['office'] = $this->Team_model->get_office(null);
        $jsonData['off'] = $this->Team_model->get_office(array('id_office' => $this->input->post('id')));
        $jsonData['neogi'] = $this->Team_model->get_n(null);
        $jsonData['neo'] = $this->Team_model->get_n(array('id_neogicates ' => $this->input->post('id')));
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function dep_user()
    {
        $id = $this->input->post('id');
        $jsonData['dep'] = $this->Team_model->get_users(array('rol' => $id));
        $jsonData['off'] = $this->Team_model->get_users(array('team_depart' => $id));
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function delTeam()
    {
        $id_rol = $this->input->post('id');

        $rs = $this->Team_model->get_data(array('id_rol' => $id_rol));
        $m = json_decode($rs->array_int);
        foreach ($m as $key) {
            $this->Team_model->update(array('rol' => '2', 'core' => '0'), array("id_user" => $key), 'tbl_users');
        }
        $qy = $this->Team_model->delete(array('id_rol' => $id_rol), 'tbl_rol');

        $jsonData['rsp'] = $qy;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    // office functions

    public function indexOffice()
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
            '<script src="' . base_url() . 'dist/js/pages/office.js"></script>',

        );

        $data['title'] = 'Oficinas';
        $data['rows'] = $this->Team_model->get_office(null);
        $this->template->load('be/template', 'be/pages/office', $data);
    }
    public function officeIn()
    {
        $name = $this->input->post('n');
        $des = $this->input->post('dp');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $core = $this->input->post('d');
        $jsonData = array();
        $data = array(
            'name_office' => $name,
            'descrip_office' => $des,
            'first_office' => $j_dp,
            'members_office' => json_encode($m),
            'rol' => $core
        );
        $qy = $this->Team_model->insert($data, 'tbl_office');
        if ($m != null) {
            if ($qy) {
                foreach ($m as $key) {
                    $this->Team_model->update(array('team_depart' => $qy), array("id_user" => $key), 'tbl_users');
                }
                $jsonData['rsp'] = 200;
                $jsonData['id'] = $qy;
                unset($data);
            } else {
                $jsonData['rsp'] = 200;
            }
        }


        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function officeUp()
    {
        $id = $this->input->post('i');
        $name = $this->input->post('n');
        $des = $this->input->post('dp');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $core = $this->input->post('d');
        $jsonData = array();
        $office = $this->Team_model->get_office(array('id_office' => $id));

        $data = array(
            'name_office' => $name,
            'descrip_office' => $des,
            'first_office' => $j_dp,
            'members_office' => json_encode($m),
            'rol' => $core
        );
        $qy = $this->Team_model->update($data, array("id_office" => $id), 'tbl_office');
        $result = array_diff(json_decode($office->members_office), $m);

        if (count($result) > 0) {
            foreach ($result as $key) {
                $this->Team_model->update(array('team_depart' => ''), array("id_user" => $key), 'tbl_users');
            }
        }

        foreach ($m as $key) {
            $this->Team_model->update(array('team_depart' => $id, 'core' => $this->session->userdata('core')), array("id_user" => $key), 'tbl_users');
        }
        $jsonData['rsp'] = 200;
        $jsonData['array'] = $result;
        $jsonData['id'] = $qy;
        unset($data);

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function delOffice()
    {
    }
    public function neogiIn()
    {
        $name = $this->input->post('n');
        $des = $this->input->post('dp');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $core = $this->input->post('d');
        $jsonData = array();
        $data = array(
            'name_neogicates' => $name,
            'descrip_neogi' => $des,
            'jefe_neogicates' => $j_dp,
            'm_neogicates' => json_encode($m),
            's_neogicates' => $core
        );
        $qy = $this->Team_model->insert($data, 'tbl_neogicates');
        if ($m != null) {
            if ($qy) {
                foreach ($m as $key) {
                    $this->Team_model->update(array('neogicates' => $qy), array("id_user" => $key), 'tbl_users');
                }
                $jsonData['rsp'] = 200;
                $jsonData['id'] = $qy;
                unset($data);
            } else {
                $jsonData['rsp'] = 200;
            }
        }


        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function neoUp()
    {
        $id = $this->input->post('i');
        $name = $this->input->post('n');
        $des = $this->input->post('dp');
        $j_dp = $this->input->post('j');
        $m = $this->input->post('m');
        $core = $this->input->post('d');
        $jsonData = array();
        $office = $this->Team_model->get_n(array('id_neogicates' => $id));
        

        $data = array(
            'name_neogicates' => $name,
            'descrip_neogi' => $des,
            'jefe_neogicates' => $j_dp,
            'm_neogicates' => json_encode($m),
            's_neogicates' => $core
        );
        $qy = $this->Team_model->update($data, array("id_neogicates" => $id), 'tbl_neogicates');
        $result = array_diff(json_decode($office->m_neogicates), $m);

        if (count($result) > 0) {
            foreach ($result as $key) {
                $this->Team_model->update(array('neogicates' => '', 'core' => ''), array("id_user" => $key), 'tbl_users');
            }
        }

        foreach ($m as $key) {
            $this->Team_model->update(array('neogicates' => $id), array("id_user" => $key), 'tbl_users');
        }
        $jsonData['rsp'] = 200;
        $jsonData['array'] = $result;
        $jsonData['id'] = $qy;
        unset($data);

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
