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
        if ($this->session->userdata('user_type') == 11 || $this->session->userdata('user_type') == 13) {
            $data['type_user'] = true;
        } else {
            $data['type_user'] = false;
        }
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
                'status' => "1",
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
        $qy = $this->Correspondence_model->get_rol(array('name_rol' => 'JEM'));

        $jsonData = array();
        if ($this->session->userdata('user_id') != $qy->jefe_rol) {
            $jsonData['rsp'] = 400;
        } else {
            $row = $this->Correspondence_model->update(array('decree' => $val, 'status' => '2'), array('id_rcvd_cr ' => $id), 'tbl_received_corr');
            $jsonData['rsp'] = 200;
        }
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function driveFrwrd()
    {

        $data['title'] = 'Archivos Adjuntos';
        $data['rows'] = $this->Correspondence_model->dataDrive($_GET['id']);
        $data['id'] = $_GET['id'];

        $data['links'] = array(
            '<link href="' . base_url() . 'dist/css/pages/drive.css" rel="stylesheet">',
            '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">'
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'dist/js/pages/drive.js"></script>'

        );

        $this->template->load('be/template', 'be/corres/drive_frwrd', $data);
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
            '<script src="' . base_url() . 'dist/js/pages/forwarded.js"></script>'
        );
        $data['rows'] = $this->Correspondence_model->dataForwarded($this->session->userdata('user_type'));
        $this->template->load('be/template', 'be/corres/forwarded', $data);
    }
    public function saveFrwrd()
    {
        if ($_FILES['file_2']['name'] != "") {
            $ext = pathinfo($_FILES['file_2']['name'], PATHINFO_EXTENSION);
            $data = array(
                'destinty_frwd' => $this->input->post('tb_ds'),
                'class_frwd' => $this->input->post('tb_c'),
                'indicative_frwd' => $this->input->post('tb_i'),
                'date_frwd' => $this->input->post('tb_d'),
                'clasif_frwd' => $this->input->post('tb_cl'),
                'issue_frwd' => $this->input->post('tb_as'),
                'frwd_by' => $this->input->post('tb_rp'),
                'ext_frwd' => $ext,
                'rcvd_corr' => $this->input->post('id_rcvd'),
                'team_id' => $this->session->userdata('user_type'),
            );
            $qy = $this->Correspondence_model->insert($data, 'tbl_forwarded_corr');
            $id = str_pad($qy, 3, '0', STR_PAD_LEFT);
            $config['upload_path'] = 'assets/images/cr_forwarded/';
            $config['allowed_types'] = '*';
            $img = $qy . "." . $ext;
            $config['file_name'] = $img;
            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('file_2')) {
                $error = array('error' => $this->upload->display_errors());
                var_dump($error) . "<br>";
            }
            $jsonData['key'] = 200;
            $jsonData['rsp'] = $id;
            $jsonData['id'] = $qy;
            $jsonData['ext'] = "'" . $ext . "'";
            if ($this->input->post('id_rcvd') != null) {
                $row = $this->Correspondence_model->update(array('status' => '3'), array('id_rcvd_cr ' => $this->input->post('id_rcvd')), 'tbl_received_corr');
            }
        } else {
            $jsonData['key'] = 400;
        }
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function userView()
    {
        $jsonData['rol'] = $this->Correspondence_model->get_record(null, 'tbl_rol');
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function viewCorr()
    {
        if ($this->input->post('id_corr') != null) {
            $jsonData['corr'] = $this->Correspondence_model->dataCorr(array('id_rcvd_cr' => $this->input->post('id_corr')));
        }

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function saveFiles()
    {
        $id = $_POST['id_frwrd'];
        $conteo = count($_FILES["archivos"]["name"]);
        $path = "assets/files/forwarded/" . $id;

        if (!file_exists($path)) {
            mkdir($path, 0777, true);
        }
        for ($i = 0; $i < $conteo; $i++) {
            $ubicacionTemporal = $_FILES["archivos"]["tmp_name"][$i];
            $nombreArchivo = $_FILES["archivos"]["name"][$i];
            $extension = pathinfo($nombreArchivo, PATHINFO_EXTENSION);
            // Renombrar archivo
            $nuevoNombre = sprintf("%s_%d.%s", uniqid(), $i, $extension);
            // Mover del temporal al directorio actual
            move_uploaded_file($ubicacionTemporal, "$path/$nuevoNombre");
            $data = array(
                "frwrd_id" => $id,
                "name" => $nuevoNombre,
                "ext" => $extension,
            );
            $this->Correspondence_model->insert($data, 'tbl_drive');
        }
        // Responder al cliente
        echo json_encode($id);
    }
    public function deleteFile()
    {
        $jsonData = array();
        $id = $this->input->post('id');
        $id_frwrd = $this->input->post('id_frwrd');
        $name = $this->input->post('name');
        $qy = $this->Correspondence_model->delete('tbl_drive', $id, 'id_file');


        if ($qy == true) {
            unlink('assets/files/forwarded/' . $id_frwrd . '/' . $name);
            $jsonData['rsp'] = 200;
        } else {
            $jsonData['rsp'] = 400;
        }
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    function viewFiles()
    {
        $limit = $this->input->post('amount');
        $id = $this->input->post('id');

        $jsonData['rows'] = $this->Correspondence_model->getFiles($limit, $id);

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}
