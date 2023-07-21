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
                        <form action="<?php echo base_url();?>be/vacations/up_personal" id="send_personal2" method="post" enctype="multipart/form-data">
                                

















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
                            <div class="card"  id="resultado2">
                                
                                    <?php
                                        foreach ($vacations as $key => $vacation) 
                                        {
                                        ?>
                                        <div class="row" >
                                          
                                            <input name="id_vacation[]" id="id_vacation[]" type="hidden"   value="<?= $vacation->id ?>" >
                                        
                                                <div class="col-md-3">
                                                    <div class="form-group"> 
                                                        <label class="form-label">Fecha de Inicio</label>
                                                        <input name="start_vacation[]" id="start_vacatio[]" type="date" class="form-control" placeholder="" value="<?= $vacation->start__vacation ?>" > 
                                                    </div>
                                                </div>    
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label class="form-label"> Cantidad de Dias</label>
                                                        <input name="quantity_day[]" id="quantity_day[]" type="number" class="form-control" placeholder="" value="<?= $vacation->quantity_day ?>" >
                                                    </div>
                                                </div>    
                                                <div class="col-md-3">    
                                                    <div class="form-group">
                                                        <label class="form-label"> MOTIVO</label>
                                                        <input name="reason[]" id="reason[]" type="text" class="form-control" placeholder="" value="<?= $vacation->reason ?>" > 
                                                    </div>
                                                </div>    
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="form-label"> Destino</label>
                                                        <input name="destination[]" id="destination[]" type="text" class="form-control" placeholder="" value="<?= $vacation->destination ?>" >
                                                    </div>
                                                </div> 
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <input type="file" id="photo_support[]" name="photo_support[]">
                                                        <label for="file-2" id="file-2-preview">Agrear soporte</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-1">
                                                    <div class="form-group">
                                                        <label class="form-label"><?= base_url('be/vacations/delete/'.$vacation->id.''); ?></label>
                                                        <br>
                                                        <button class="btn btn-warning" type="button" onclick="eliminar('<?= base_url('be/vacations/delete/'.$vacation->id.''); ?>');"> 
                                                                <i class="fa fa-minus"></i> 
                                                        </button>  </div>
                                                </div>
                                           
                                                </div>
                                    <?php } ?>
                                     
                                   
                                    </div>
                                   

                                    <div id="vacation_fields">




                                    </div>
                                   
                           

                            <div class="input-group-append mb-4">
                                <button class="btn btn-success text-white" type="button" onclick="vacation_fields();">
                                        <i class="fa fa-plus">Adicionar Vacacionesr</i>
                                </button>
                            </div>
                                                                                        
                        </div>
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