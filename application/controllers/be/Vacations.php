<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Vacations extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        check_login_user();
        $this->load->model('Staff_model');
        $this->load->model('Vacation_model');
        $this->load->model('Correspondence_model');
    }



    public function index()
    {
        $data['links'] = array();
        $data['scripts'] = array(
            '<script src="' . base_url() . 'dist/js/pages/staff_list.js"></script>'
        );

        $data['rows'] = $this->Vacation_model->get();

        $data['title'] = 'Ordenes de Vacaciones';
        $this->template->load('be/template', 'be/vacations/index', $data);
    }



    public function add()
    {
        $data['links'] = array(
            '<link href="' . base_url() . 'assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">',
            '<link href="' . base_url() . 'dist/css/pages/stylish-tooltip.css" rel="stylesheet">',
            '<link href="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css" rel="stylesheet">',

        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'assets/node_modules/moment/moment.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/select2/dist/js/select2.full.min.js"></script>',
            '<script src="' . base_url() . 'dist/js/funciones.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/dff/dff.js" type="text/javascript"></script>'


        );
      //  ('tbl_background', array('person_bck' => $id));
        $data['vacations'] = $this->Vacation_model->get_data('tbl_vacation', array('id_user' => $this->session->userdata('user_id')));
        $data['title'] = 'Agregar Vacaciones';

       // var_dump($data['vacations']);
        $this->template->load('be/template', 'be/vacations/form', $data);
    }

   
    public function up_vacaion()
    {
 
    
       

      
      
       $dias = array('Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado');
       if ($this->input->post("start_vacation") != null)
       {
                   

           for ($x = 0; $x < count($this->input->post("start_vacation")); $x++) 
           {
                 $k = 0; 

                $cantidad = $this->input->post('quantity_day')[$x] -1;
                $start__vacation = $this->input->post('start_vacation')[$x];
                $dia_semama = date('N', strtotime($start__vacation));

                $fecha = date('Y-m-d', strtotime($start__vacation));
               
                $end_vacation = date("Y-m-d",strtotime($start__vacation."+".$cantidad ." days"));
                $end_dia_semama = date("N",strtotime($start__vacation."+".$cantidad ." days")); 

               // echo $end_dia_semama;
                $j = 0;
                $con_fines = 0;
       
                $fecha_fin_semana = "";
                $date_wekend = "";

                  //  echo "fin del dia de la semana ".$end_dia_semama;


                   // echo " +++++ inicio  del dia de la semana ".$dia_semama;

                $contadorDia = 0;
                $suiche = 0;
                $suiche2 = 0; 
                $suiche3 = 0; 
                for ($i = 0 ; $i <= $cantidad;$i++ ) 
                {
                   
                    
                    $fecha_aumentada = date("Y-m-d",strtotime($start__vacation."+".$i ." days"));
                    
                //    echo " / ".$fecha_aumentada." / ";
                    
                    $dia_semana = date("N",strtotime($fecha_aumentada));

                  //  echo " + ".$dia_semana." + ";


                  if( ($dia_semana == 7 ) &&  $suiche == 0)
                  {
                    $date_wekend = $date_wekend.  "  ".$fecha_aumentada;            
                        
                      $contadorDia++;
                      $suiche3 = 1;
                      if( $suiche2 == 1){
                          $contadorDia--;
                      }


                      $cantidad++;
                  }
                  if( ($dia_semana == 6) &&  $suiche == 0)
                  {
                    $date_wekend = $date_wekend.  "  ".$fecha_aumentada; 
                      $contadorDia+2;
                      $suiche3 = 1;
                      if( $suiche2 == 1){
                          $contadorDia-2;
                      }

                      $cantidad++;
                     
                  }
                  else if ($dia_semana == 5){
                    $date_wekend = $date_wekend.  "  ".$fecha_aumentada; 
                        $contadorDia = $contadorDia + 2 ;
                        $suiche = 1;
                        if( $suiche2 == 1){
                            $contadorDia--;
                        }
                        $cantidad++;
                    }else if ($dia_semana == 1){
                        if ($i == 0){

                            $start__vacation = date("Y-m-d",strtotime($start__vacation."- 2  days"));
                        }
                        $date_wekend = $date_wekend.  "  ".$fecha_aumentada; 
                        $contadorDia++;
                        $suiche = 1;
                        $suiche2 = 1;
                        if( $suiche3 == 1){
                            $contadorDia--;
                        }

                        $cantidad++;
                    } else{
                        $k++;
                    }
                  //  echo  $cantidad."/";
               
               



                    /*      
                    $j ++;
                  
        
                    if( $i== 1 || $i== 7 || $i== 8 ||   $i== 14 || $i== 15 || $i== 21  || $i== 22 ||  $i== 28 || $i== 29  ){
                         $con_fines++;               
                        $dias_con++;  
                               
                        if($i== 1){
                            $date_wekend = $date_wekend.  "  ".date('d-M-Y', strtotime($start__vacation."-".$j ." days"));            
                        
                        }else{
                            $date_wekend = $date_wekend.  " / ".date('d-M-Y', strtotime($start__vacation."+".$j ." days"));            
                        
                        }
                    }


            
        
                  //  $fecha = date('d-M-Y', strtotime($start__vacation."+".$j ." days"));
        
                  // echo $fecha;*/










                }

                echo "dias fi semana ". $contadorDia;

                echo " +++++dias computados ". $this->input->post('quantity_day',true)[$x];
                $directorio = 'assets/images/soportes/vacaciones/';  
                if ($_FILES['photo_support']['name'][$x] != "")
                {
                    $ext = pathinfo($_FILES['photo_support']['name'][$x], PATHINFO_EXTENSION);
                    $filename = "1-".$x.".".$ext;
                
                   
                    copy($_FILES["photo_support"]["tmp_name"][$x],$directorio."".$filename);
                    $directorio =  $directorio."".$filename;
                }
                $f = $k;
                $f ++;
                $vacation=array
                (   
                    'reason'=>$this->input->post('reason',true)[$x],  
                    'quantity_day'=>$this->input->post('quantity_day',true)[$x], 
                    'start__vacation'=>$start__vacation, 
                    'end_vacation'=> $end_vacation = date("Y-m-d",strtotime($start__vacation."+".$f ." days")),
                    'destination'=>$this->input->post('destination',true)[$x],
                    'days_computed'=>$k,
                    'weekend'=>   $contadorDia ,
                    'date_wekend'=> $date_wekend,                    
                    'dni_user' => $this->session->userdata('user_dni'),
                    'id_user' => $this->session->userdata('user_id'),
                    'photo_support'=>$directorio,
                    'days_used' => $dias_con + $k + $contadorDia,
                );



         //   $last_id2 = $this->Staff_model->insert($vacation, 'tbl_vacation');

            if ($this->input->post('id_vacation',true)[$x] == "1"){
                $qy = $this->Vacation_model->insert($vacation,"tbl_vacation" );
            }else{

                $qy = $this->Vacation_model->update2($vacation,"tbl_vacation",array('id' => $this->input->post('id_vacation',true)[$x]) );
            }



               
            }
        }

        //echo $fecha." -> Numero del dia de la semana//////";
       
        //echo $fecha."->Fecha Actual";
        //  echo $start__vacation."cantidad Dias acumulados???????????";
        // echo date("N",strtotime($start__vacation."+".$cantidad ." days"))."-> fin de vacacions  "; 
        /*  foreach($vacation as $vaca){
        echo $vaca->id;
        }
        */
        redirect(base_url()."be/vacations/add");
            }

    public function data_table()
    {
        $id = $this->input->post('id');
        $result = $this->Staff_model->get_data_table('tbl_background', array('person_bck' => $id));
        if ($result) {
            foreach ($result as $row) {
                $array['data'][] = $row;
            }
        } else {
            $array['data'] = array();
        }

        echo json_encode($array);
    }
    public function up_bck()
    {
        if ($_FILES['doc_bck']['name']) {
            $name = date('dmYhis') . '_' . rand(0, 99999) . "." . pathinfo($_FILES['doc_bck']['name'], PATHINFO_EXTENSION);
            $config['upload_path'] = 'assets/images/bck_images/';
            $config['allowed_types'] = '*';

            $config['file_name'] = $name;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('doc_bck')) {
                $error = array('error' => $this->upload->display_errors());

                var_dump($error) . "<br>";
            }

            $data = array(
                'type_bck' => $this->input->post('type_bck'),
                'name_bck' => $this->input->post('name_bck'),
                'doc_bck' => $name,
                'person_bck' => $this->input->post('id_pr'),
            );
            $last_id = $this->Staff_model->insert($data, 'tbl_background');

            $jsonData['data'] = $data;
            $jsonData['up_id'] = $last_id;
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsonData);
        }
    }
    public function update_bck()
    {

        if ($_FILES['doc_bck']['name']) {
            $name = date('dmYhis') . '_' . rand(0, 99999) . "." . pathinfo($_FILES['doc_bck']['name'], PATHINFO_EXTENSION);
            $config['upload_path'] = 'assets/images/bck_images/';
            $config['allowed_types'] = '*';

            $config['file_name'] = $name;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);
            if (!$this->upload->do_upload('doc_bck')) {
                $error = array('error' => $this->upload->display_errors());

                var_dump($error) . "<br>";
            }

            $data = array(
                'type_bck' => $this->input->post('type_bck'),
                'name_bck' => $this->input->post('name_bck'),
                'doc_bck' => $name
            );
            $this->Staff_model->update($data, 'tbl_background', array('id_bck' => $this->input->post('id_bck')));

            $jsonData['data'] = $data;
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsonData);
        } else {
            $data = array(
                'type_bck' => $this->input->post('type_bck'),
                'name_bck' => $this->input->post('name_bck'),
                'person_bck' => $this->input->post('id_pr'),
            );
            $this->Staff_model->update($data, 'tbl_background', array('id_bck' => $this->input->post('id_bck')));
            $jsonData['data'] = $data;
            header('Content-type: application/json; charset=utf-8');
            echo json_encode($jsonData);
        }
    }

 
 

   

    public function delete($id=null)
    {

              
        if(!$id){show_404();}  
        $this->Vacation_model->delete("tbl_vacation",$id,'id');
        $this->session->set_flashdata('css','success');
        $this->session->set_flashdata('mensaje','El registro se ha eliminado exitosamente');
          
        $vacations = $this->Vacation_model->get_data('tbl_vacation', array('id_user' => $this->session->userdata('user_id')));
       


        
        //$this->layout->view("vacations/vacationList",compact('vacations'));
        $this->load->view('be/vacations/vacationList',compact('vacations'));

       
    }



    public function single_vacacion($id)
    {
        $data['row'] = $this->Vacation_model->get_id(array('id' => $id));
    // var_dump($data['row']);
        $this->load->view('be/vacations/pdf', $data);
    }



    public function driveRcvd()
    {
        $data['title'] = 'Archivos Adjuntos Recibidos';
        $data['rows'] = $this->Vacation_model->dataDriveRcvd($_GET['id']);
        $data['id'] = $_GET['id'];

        $data['links'] = array(
            '<link href="' . base_url() . 'dist/css/pages/drive.css" rel="stylesheet">',
            '<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">'
        );
        $data['scripts'] = array(
            '<script src="' . base_url() . 'dist/js/pages/vacation_rcvd.js"></script>'

        );

        $this->template->load('be/template', 'be/vacations/drive_rcvd', $data);
    }



    public function saveFilesRcvd()
    {
        $id = $_POST['id_rcvd'];
        $conteo = count($_FILES["archivos"]["name"]);
        $path = "assets/files/receivedVacation/" . $id;

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
                "rcvd_id" => $id,
                "name_rcvd" => $nuevoNombre,
                "ext_rcvd_d" => $extension,
            );
            $this->Correspondence_model->insert($data, 'tbl_vacation_rcvd');
        }
        // Responder al cliente
        echo json_encode($id);
    }


    function viewFilesRcvd()
    {
        $limit = $this->input->post('amount');
        $id = $this->input->post('id');

        $jsonData['rows'] = $this->Vacation_model->getFilesRcvd($limit, $id);

        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }



    public function deleteFileRcvd()
    {
        $jsonData = array();
        $id = $this->input->post('id');
        $id_rcvd = $this->input->post('id_rcvd');
        $name = $this->input->post('name_rcvd');
        $qy = $this->Correspondence_model->delete('tbl_vacation_rcvd', $id, 'id_file_rcvd ');


        if ($qy == true) {
            unlink('assets/files/receivedVacation/' . $id_rcvd . '/' . $name);
            $jsonData['rsp'] = 200;
        } else {
            $jsonData['rsp'] = 400;
        }
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
}




     
                