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
    }
    public function index()
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

    public function formStaff()
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
            '<script src="' . base_url() . 'dist/js/pages/staff.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/dff/dff.js" type="text/javascript"></script>'


        );

        $data['grades'] = $this->Staff_model->get_data('tbl_staff_grade', null);
        $data['teams'] = $this->Staff_model->get_data('tbl_rol', null);
        $data['specialties'] = $this->Staff_model->get_data('tbl_specialty', null);
        $data['title'] = 'Agregar Personal';
        $this->template->load('be/template', 'copere/vacations/form', $data);
    }
    public function up_personal()
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
                $vacation1 = $this->Vacation_model->sumar('tbl_vacation', 'weekend');
                $vacation2 = $this->Vacation_model->sumar('tbl_vacation', 'days_computed');
                $dias_con = $vacation1->weekend + $vacation2->days_computed ;
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
                for ($i = $dias_con ; $i <= $dias_con + $cantidad;$i++ ) 
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
                          $contadorDia--;
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

                $vacation=array
                (   
                    'reason'=>$this->input->post('reason',true)[$x],  
                    'quantity_day'=>$this->input->post('quantity_day',true)[$x], 
                    'start__vacation'=>$start__vacation, 
                    'end_vacation'=>$end_vacation,
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
        redirect(base_url()."be/vacations/");
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
    public function data_grade()
    {
        $result = $this->Staff_model->get_select(array('name_grade_staff' => $_GET['q']), 'tbl_staff_grade');
        if ($result != null) {
            foreach ($result as $row) {
                $id = $row->id_staff_grade;
                $text = $row->name_grade_staff;
                $data[] = array('id' => $id, 'text' => $text);
            }
        } else {
            $data[] = array('id' => 0, 'text' => 'No se encontro Grado');
        }
        echo json_encode($data);
    }
    public function data_specialty()
    {
        $result = $this->Staff_model->get_select(array('name_specialty' => $_GET['q']), 'tbl_specialty');
        if ($result != null) {
            foreach ($result as $row) {
                $id = $row->id_specialty;
                $text = $row->name_specialty;
                $data[] = array('id' => $id, 'text' => $text);
            }
        } else {
            $data[] = array('id' => 0, 'text' => 'No se encontro Especialidad');
        }
        echo json_encode($data);
    }
    public function data_origin()
    {
        $result = $this->Staff_model->get_origim($_GET['q'], 'tbl_rol');
        if ($result != null) {
            foreach ($result as $row) {
                if ($row->id_rol == "0" || $row->id_rol == "1" || $row->id_rol == "2") {
                } else {
                    $id = $row->id_rol;
                    $text = $row->name_rol;
                    $data[] = array('id' => $id, 'text' => $text);
                }
            }
        } else {
            $data[] = array('id' => 0, 'text' => 'No se encontro Unidad de Origen');
        }
        echo json_encode($data);
    }
    public function get_bck()
    {
        $id = $this->input->post('id');
        $result = $this->Staff_model->get_data_table('tbl_background', array('id_bck' => $id));

        $jsonData['data'] = $result;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function delete_bck()
    {
        $id = $this->input->post('id');
        $row = $this->Staff_model->get_data_table('tbl_background', array('id_bck' => $id), 'row');
        unlink('assets/images/bck_images/' . $row->doc_bck);

        $q = $this->Staff_model->delete('tbl_background', $id, 'id_bck');
        if ($q) {
            $jsonData['rsp'] = true;
        }
        $jsonData['img'] = $row->doc_bck;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }

    public function edit_personal($id)
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
            '<script src="' . base_url() . 'dist/js/pages/staff_edit.js"></script>',
            '<script src="' . base_url() . 'assets/node_modules/dff/dff.js" type="text/javascript"></script>'


        );



















        
        $rows = $this->Staff_model->get_jobs(array('id_personal' => $id));
        $relatives = $this->Staff_model->get_relatives(array('id_personal' => $id));
        $data['jobs'] = $rows;
        $data['id'] = $id;
        $data['title'] = 'Editar Personal';

        $relatives = $this->Staff_model->get_relatives(array('id_personal' => $id));
        $data['relatives'] = $relatives;

     
        
        $this->template->load('be/template', 'copere/staff/edit', $data);
    }
    public function data_personal()
    {
        $id = $this->input->post('id');
        $row = $this->Staff_model->get_staffId(array('p.id_staff' => $id));
        $jsonData['row'] = $row;
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
    }
    public function gp_personal()
    {
        $id = $this->input->post('id_staff');
        $workplace = $this->input->post('workplace');
        $start_date = $this->input->post('start_date');
        $finish_date = $this->input->post('finish_date');
        $id_jobb = $this->input->post('id_jobbs');

        $data = array(
            'name_staff' => $this->input->post('n_staff'),
            'lastname_staff' => $this->input->post('ls_staff'),
            'cip_staff' => $this->input->post('cip'),
            'dni_staff' => $this->input->post('dni'),
            'place_staff' => $this->input->post('place_birth'),
            'birthday_staff' => $this->input->post('date_birth'),
            'address' => $this->input->post('home_address'),
            'cell_holder' => $this->input->post('cell_holder'),
            'emergency_cell' => $this->input->post('emergency_cell'),
            'status_staff' => $this->input->post('civil_status'),
            'sons_staff' => $this->input->post('number_children'),
            'condition_staff' => $this->input->post('condition_staff'),
            'hired_staff' => $this->input->post('date_contracted'),
            'named_staff' => $this->input->post('date_named'),
            'ascent_staff' => $this->input->post('date_ascent'),
            'grade_staff' => $this->input->post('grade_staff'),
            'unit_staff' => $this->input->post('unit_staff'),
            'ocupation_staff' => $this->input->post('group_occup'),
            'specialty_staff' => $this->input->post('speciality'),
            'position_staff' => $this->input->post('position')
        );

        $lsat_id = $this->Staff_model->update($data, 'tbl_staff', array('id_staff' => $id));

        for ($i = 0; $i < count($workplace); $i++) {
            $jobbs = array(
                'name_jobb' => $workplace[$i],
                'start_jobb' => $start_date[$i],
                'finalized_jobb' => $finish_date[$i],
            );
            $this->Staff_model->update($jobbs, 'tbl_staff_jobs', array('id_jobb' => $id_jobb[$i]));
        }

        $jsonData['data'] = $data;
        $jsonData['last'] = $lsat_id;











        

















        if ($this->input->post("id_relative") != null)
        {
                     
 
            for ($x = 0; $x < count($this->input->post("id_relative")); $x++) 
            {
                     
                     

          


                        $relatives=array
                        (
                            'name_relative'=>$this->input->post('name_relative',true)[$x],  
                            'lastName_relative'=>$this->input->post('lastName_relative',true)[$x], 
                            'date_birth_relative'=>$this->input->post('date_birth_relative',true)[$x],  
                            'CCIIFFS'=>$this->input->post('CCIIFFS',true)[$x],
                            'dni'=>$this->input->post('dni_relative',true)[$x],
                            'dni_personal'=>$this->input->post('dni'),
                            'relation'=>$this->input->post('relation')[$x],
                           
                           
                            
                        );

                    

                    if($this->input->post('id_relative',true)[$x] == 1){
                       $this->Staff_model->insert($relatives, 'tbl_relatives');
                    }else{
                     
                        $this->Staff_model->update($relatives, 'tbl_relatives', array('id' => $this->input->post('id_relative',true)[$x]));
                        //  $this->Staff_model->insert($relatives, 'tbl_relatives');
                      
                    }
               
                   
            }
        }





















        header('Content-type: application/json; charset=utf-8');
        echo json_encode($jsonData);
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

}




     
                