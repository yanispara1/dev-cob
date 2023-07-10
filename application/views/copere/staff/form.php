<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="row page-titles">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor">Registro de Personal Civil</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item"><a href="<?= base_url(); ?>">Inicio</a></li>
                        <li class="breadcrumb-item active"></li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="content-panel">
                        <form action="<?php echo base_url();?>be/staff/up_personal" id="send_personal2" method="post" enctype="multipart/form-data">
                                <div class="card" id="data_fam">
                                    <div class="card-header text-white bg-info">
                                        <b>Datos Personales</b>
                                        <div class="card-actions">
                                            <a class="text-white" data-action="collapse"><i class="ti-minus"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body collapse show" id="frwd_form">
                                        <h3 class="card-title">Datos Personales </h3>
                                        <hr>
                                        <div class="row p-t-20">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label for="tb-i">Nombres <code>*</code></label>
                                                    <input type="text" class="form-control input_txt" name="n_staff" id="n_staff" placeholder="Ingrese Nombres">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Apellidos <code>*</code></label>
                                                    <input type="text" class="form-control input_txt" name="ls_staff" id="ls_staff" placeholder="Ingrese Apellidos">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">CIP <code>*</code></label>
                                                    <input type="text" class="form-control input_numb" name="cip" id="cip" placeholder="Ingrese CIP">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">DNI <code>*</code></label>
                                                    <input type="text" class="form-control input_numb" maxlength="8" name="dni" id="dni" placeholder="Ingrese DNI">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Lugar de Nacimiento <code>*</code></label>
                                                    <input type="text" class="form-control" name="place_birth" id="place_birth" placeholder="Ingrese Lugar de Nacimiento">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Nacimiento <code>*</code></label>
                                                    <input type="date" class="form-control" name="date_birth" id="date_birth" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Dirección Domiciliaria <code>*</code></label>
                                                    <input type="text" class="form-control" name="home_address" id="home_address" placeholder="Ingrese Dirección Domiciliaria">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Celular Titular <code>*</code></label>
                                                    <input type="text" class="form-control input_numb" name="cell_holder" id="cell_holder" placeholder="Ingrese Celular Titular">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Celular de Emergencia </label>
                                                    <input type="text" class="form-control input_numb" name="emergency_cell" id="emergency_cell" placeholder="Ingrese Celular de Emergencia">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Estado Civil <code>*</code>
                                                    </label>
                                                    <select name="civil_status" id="civil_status" class="form-control form-select">
                                                        <option value="">--Estado Civil--</option>
                                                        <option value="Soltero">Soltero</option>
                                                        <option value="Casado">Casado</option>
                                                        <option value="Viudo">Viudo</option>
                                                        <option value="Divorciado">Divorciado</option>
                                                        <option value="Separado">Separado</option>
                                                        <option value="Conviviente">Conviviente</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Número de Hijos</label>
                                                    <input type="text" class="form-control input_numb" name="number_children" id="number_children" maxlength="1" placeholder="Ingrese N° de Hijos">
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>














                                <div class="card" id="data_ingr3">
    <div class="card-header text-white bg-info">
        <b id="titleCard2">II. Familiares Directos Del Aportante</b>
        <div class="card-actions">
            <a class="text-white" data-action="collapse"><i class="ti-minus"></i></a>
        </div>
    </div>
    <div class="card-body collapse show">
        <div class="row">
            <div class="col-md-12">
            <div class="card">
                <div class="card-body" id = "resultado2">
                <div class="input-group-append mb-4">
                    <button class="btn btn-success text-white" type="button" onclick="relatives_fields();">
                            <i class="fa fa-plus">Adicionar Familiares Director</i>
                    </button>
                </div>
               
                                                    

				
				    <div id="relatives_fields">

                    </div>
        </div>

																										
    </div>
    </div>
    </div>
    </div>
    </div>





<div class="card" id="data_ingr5">
    <div class="card-header text-white bg-info">
        <b id="titleCard2">Vacaciones</b>
        <div class="card-actions">
            <a class="text-white" data-action="collapse"><i class="ti-minus"></i></a>
        </div>
    </div>
    <div class="card-body collapse show">
        <div class="row">
            <div class="col-md-12">
            <div class="card">
                <div class="row card-body" id = "resultado3">

                <div class="input-group-append mb-4">
                    <button class="btn btn-success text-white" type="button" onclick="vacation_fields();">
                            <i class="fa fa-plus">Adicionar Vacacionesr</i>
                    </button>
                </div>
             


                


                <input name="id_vacation" id="id_vacation" type="hidden"   value="1" >
                 
                <div class="col-md-3">    
                    <div class="form-group">        
                        <label class="form-label">Fecha de Inicio</label>        
                        <input name="start__vacation" id="start__vacation" type="date" class="form-control" placeholder="" value="" > 
                    </div>
                </div> 
                <div class="col-md-2">    
                    <div class="form-group">        
                        <label class="form-label"> Cantidad de Dias</label>       
                        <input name="quantity_day" id="quantity_day" type="number" class="form-control" placeholder="" value="" > 
                    </div>
                </div>
                <div class="col-md-4">    
                    <div class="form-group">        
                        <label class="form-label"> MOTIVO</label>        
                        <input name="reason" id="reason" type="text" class="form-control" placeholder="" value="" > 
                    </div>
                </div>


                <div class="col-md-3">    
                    <div class="form-group">        
                        <label class="form-label"> Destino</label>        
                        <input name="destination" id="destination" type="text" class="form-control" placeholder="" value="" > 
                    </div>
                </div>


                <div id="vacation_fields">
                
                
            </div>
         
            

																										
        </div>
        </div>
        </div>
        </div></div></div>









                                <div class="card" id="data_fam">
                                    <div class="card-header text-white bg-info">
                                        <b>Datos de Servicio</b>
                                        <div class="card-actions">
                                            <a class="text-white" data-action="collapse"><i class="ti-minus"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body collapse show" id="frwd_form">
                                        <h3 class="card-title">Datos de Servicio </h3>
                                        <hr>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="condition_staff">Condición</label>
                                                    <select id="condition_staff" name="condition_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option value="">--Condición--</option>
                                                        <option value="Contratado">Contratado</option>
                                                        <option value="Nombrado">Nombrado</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Ingreso Contratado :</label>
                                                    <input type="date" class="form-control" name="date_contracted" id="date_contracted" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Ingreso Nombrado :</label>
                                                    <input type="date" class="form-control" name="date_named" id="date_named" placeholder="Ingrese Fecha de Ingreso Nombrado">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha Ultimo Ascenso :</label>
                                                    <input type="date" class="form-control" name="date_ascent" id="date_ascent" placeholder="">
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="grade_staff">Grado</label>
                                                    <select id="grade_staff" name="grade_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="unit_staff">Unidad Origen</label>
                                                    <select id="unit_staff" name="unit_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="group_occup">Grupo Ocupacional</label>
                                                    <select id="group_occup" name="group_occup" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option value="">--Grupo Ocupacional--</option>
                                                        <option value="AUXILIAR">AUXILIAR</option>
                                                        <option value="TÉCNICO">TÉCNICO</option>
                                                        <option value="PROFESIONAL">PROFESIONAL</option>
                                                        <option value="CAS">CAS</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="speciality">Especialidad</label>
                                                    <select id="speciality" name="speciality" class="form-control form-select" style="width: 100%; height:36px;position:fixed">

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="position">Puesto</label>
                                                    <input type="text" class="form-control" name="position" id="position" placeholder="Ingrese Puesto">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card" id="">
                                    <div class="card-header text-white bg-info">
                                        <b>Tres Utimos Lugares de Trabajos</b>
                                        <div class="card-actions">
                                            <a class="text-white" data-action="collapse"><i class="ti-minus"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body collapse show" id="">
                                        <h3 class="card-title">Lugares donde Trabajó </h3>
                                        <hr>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Lugar donde trabajó :</label>
                                                    <input type="text" class="form-control" name="workplace[]" id="workplace" placeholder="Lugar donde trabajó">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Inicio:</label>
                                                    <input type="date" class="form-control" name="start_date[]" id="start_date" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Fin:</label>
                                                    <input type="date" class="form-control" name="finish_date[]" id="finish_date" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Lugar donde trabajó :</label>
                                                    <input type="text" class="form-control" name="workplace[]" id="workplace" placeholder="Lugar donde trabajó">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Inicio:</label>
                                                    <input type="date" class="form-control" name="start_date[]" id="start_date" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Fin:</label>
                                                    <input type="date" class="form-control" name="finish_date[]" id="finish_date" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Lugar donde trabajó :</label>
                                                    <input type="text" class="form-control" name="workplace[]" id="workplace" placeholder="Lugar donde trabajó">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Inicio:</label>
                                                    <input type="date" class="form-control" name="start_date[]" id="start_date" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Fin:</label>
                                                    <input type="date" class="form-control" name="finish_date[]" id="finish_date" placeholder="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="offset-sm-10 col-md-2">
                                        <button type="submit" class="btn waves-effect waves-light w-100 btn-success text-white" id="btn_send">Guardar Personal</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>