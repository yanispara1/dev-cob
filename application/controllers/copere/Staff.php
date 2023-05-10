<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Staff extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        check_login_user();
        $this->load->model('Staff_model');
    }

    public function formStaff()
    {
        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'dist/css/pages/stylish-tooltip.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/moment/moment.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/staff.js"></script>'

        );
        
        $data['grades'] = $this->Staff_model->get_data('tbl_grade_staff',null);
        $data['teams'] = $this->Staff_model->get_data('tbl_rol',null);
        $data['specialties'] = $this->Staff_model->get_data('tbl_specialty',null);
        $data['title'] = 'Agregar Personal';
        $this->template->load('be/template', 'copere/staff/form', $data);
    }
}
