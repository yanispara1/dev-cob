<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Correspondence extends CI_Controller
{

    public function __construct()
    {

        parent::__construct();
        check_login_user();
        $this->load->model('Correspondence_model');
    }

    public function received()
    {
        $type = $this->session->userdata('user_type');
        $data['title'] = 'Correspondecias-Recibidas';
        $data['rows'] = $this->Correspondence_model->dataReceived($this->session->userdata('user_type'));
        $data['id_user'] = $this->session->userdata('user_id');

        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/magnific-popup.css">',
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/moment/moment.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/received.js"></script>',
        );

        $this->template->load('be/template', 'be/corres/received', $data);
    }

    public function saveRcvd()
    {
        if ($_FILES['file_1']['name'] != "") {
            $ext = pathinfo($_FILES['file_1']['name'], PATHINFO_EXTENSION);
            $data = array(
                'sender_rcvd' => $this->input->post('tb_r'),
                'class_rcvd' => $this->input->post('tb_c'),
                'indicative_rcvd' => $this->input->post('tb_i'),
                'date_rcvd' => $this->input->post('tb_d'),
                'clasif_rcvd' => $this->input->post('tb_cl'),
                'issue_rcvd' => $this->input->post('tb_as'),
                'rcvd_by' => $this->input->post('tb_rp'),
                'ext_rcvd' => $ext,
                'decree' => "0",
            );
            $qy = $this->Correspondence_model->insert($data, 'tbl_received_corr');
            $id = str_pad($qy, 3, '0', STR_PAD_LEFT);
            $config['upload_path'] = 'assets/images/cr_recvd/';
            $config['allowed_types'] = 'jpg|png|jpeg|PNG|JPG|JPEG';
            $img = $qy . "." . pathinfo($_FILES['file_1']['name'], PATHINFO_EXTENSION);
            $config['file_name'] = $img;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('file_1')) {
                $error = array('error' => $this->upload->display_errors());
                var_dump($error) . "<br>";
            }
            $jsonData['key'] = 200;
            $jsonData['rsp'] = $id;
            $jsonData['id'] = $qy;
            $jsonData['ext'] = "'" . $ext . "'";
        } else {
            $jsonData['key'] = 400;
        }


        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function decreeTeam()
    {
        $val = $this->input->post('val');
        $id = $this->input->post('id_cr');
        $jsonData = array();
        if ($this->session->userdata('user_id') != "24") {
            $jsonData['rsp'] = 400;
        } else {
            $row = $this->Correspondence_model->update(array('decree' => $val), array('id_rcvd_cr ' => $id), 'tbl_received_corr');
            $jsonData['rsp'] = 200;
        }
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function forwarded()
    {
        $data['title'] = 'Correspondecias-Remitidas';

        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/magnific-popup.css">',
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/moment/moment.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/Magnific-Popup-master/dist/jquery.magnific-popup.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/pages/received.js"></script>',
        );

        $this->template->load('be/template', 'be/corres/forwarded', $data);
    }

    public function userView()
    {
        $q_rol = $this->Correspondence_model->get_record(null, 'tbl_rol');
        $jsonData['rol'] = $q_rol;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
