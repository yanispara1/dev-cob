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

    public function orders()
    {
        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/multiselect/css/multi-select.css"">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'dist/css/pages/timeline-vertical-horizontal.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/html5-editor/bootstrap-wysihtml5.css" rel="stylesheet">'
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/html5-editor/wysihtml5-0.3.0.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/html5-editor/bootstrap-wysihtml5.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/orders.js"></script>'
        );

        $data['title'] = 'Inspección Técnica';
        $data['rows'] = $this->Order_model->get_data(NULL, 'tbl_orders_services');
        $this->template->load('be/template', 'be/orders/orders', $data);
    }
    public function inspection()
    {
        $data['links'] = array();
        $data['scripts'] = array(
            '<script src="' . base_url() . 'dist/js/pages/inspection.js"></script>',
        );

        $data['title'] = 'Ordenes de Servicio';
        $data['rows'] = $this->Order_model->get_inspection(null);
        $this->template->load('be/template', 'be/orders/inspecciones', $data);
    }
    function order_status()
    {
        $id = $this->input->post('id');
        $jsonData['rows'] = $this->Order_model->get_status(array('order' => $id));

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    function save_status()
    {
        $txt_v = $this->input->post('txt_v');
        $status_v = $this->input->post('status_v');
        $jsonData['sts_date'] = date(DATE_W3C);
        $data = array(
            'name_statuso' => $status_v,
            'desc_statuso' => $txt_v,
            'register_statuso' => $jsonData['sts_date'],
            'order' => $this->input->post('id_order'),
        );
        $jsonData['num_rows'] = $this->Order_model->num_status(array('order' => $this->input->post('id_order')));

        $data = array(
            'line_order' => $status_v
        );

        $this->Order_model->update($data, array('id_order' => $this->input->post('id_order')), 'tbl_orders_services');

        $jsonData['id_status'] = $this->Order_model->insert($data, 'tbl_orders_status');

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
