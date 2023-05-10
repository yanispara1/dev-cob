<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Office extends CI_Controller
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
            '<script src="' . base_url() . 'dist/js/pages/neogicates.js"></script>',

        );

        $data['title'] = 'Departamentos';
        $data['rows'] = $this->Team_model->get_n(null);
        $this->template->load('be/template', 'be/pages/neogicates', $data);
    }
}
