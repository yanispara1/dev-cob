<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Example extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();
        check_login_user();
        $this->load->model('Be_model');
    }

    public function index()
    {
        $data['title'] = 'Ejemplo';

        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/multiselect/css/multi-select.css"">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/multiselect/js/jquery.multi-select.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/multiselect/js/jquery.multi-select.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/example.js"></script>',

        );

        $this->template->load('be/template', 'be/pages/example', $data);
    }
}
