<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Orders extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        check_login_user();
        $this->load->model('Order_model');
    }

    public function orders(){
        $data['links'] = array(
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'dist/js/pages/orders.js"></script>',
        );

        $data['title'] = 'Ordenes de Servicio';
        $data['rows'] = $this->Order_model->get_orders(null);
        $this->template->load('be/template', 'be/orders/orders', $data);
    }
}
