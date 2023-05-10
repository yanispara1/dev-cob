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
                            <form id="send_frwd" enctype="multipart/form-data">
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
                                                    <input type="text" class="form-control" required name="n_staff" id="tb_ds" placeholder="Ingrese Nombres">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Apellidos <code>*</code></label>
                                                    <input type="text" class="form-control" required name="ls_staff" id="tb_rp" placeholder="Ingrese Apellidos">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">CIP <code>*</code></label>
                                                    <input type="text" class="form-control" required name="cip" id="cip" placeholder="Ingrese CIP">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">DNI <code>*</code></label>
                                                    <input type="text" class="form-control" required name="cip" id="cip" placeholder="Ingrese DNI">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Lugar de Nacimiento <code>*</code></label>
                                                    <input type="text" class="form-control" required name="n_staff" id="tb_ds" placeholder="Ingrese Lugar de Nacimiento">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Nacimiento <code>*</code></label>
                                                    <input type="text" class="form-control" required name="birth_date" id="birth_date" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Dirección Domiciliaria <code>*</code></label>
                                                    <input type="text" class="form-control" required name="home_address" id="home_address" placeholder="Ingrese Dirección Domiciliaria">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Celular Titular <code>*</code></label>
                                                    <input type="text" class="form-control" required name="cell_holder" id="cell_holder" placeholder="Ingrese Celular Titular">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Celular de Emergencia </label>
                                                    <input type="text" class="form-control" required name="cell_holder" id="cell_holder" placeholder="Ingrese Celular de Emergencia">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Estado Civil <code>*</code> <span class="tooltip-item">Euclid</span>
                                                        <span class="tooltip-content clearfix">
                                                            <img src="../assets/images/tooltip/Euclid.png" alt="euclid" /><span class="tooltip-text">Also known as Euclid of andria, was a Greek
                                                                mathematician, often referred.</span> </span>
                                                        </span>
                                                    </label>

                                                    <select name="civil_status" id="civil_status" class="form-control form-select">
                                                        <option>--Estado Civil--</option>
                                                        <option value="Solteros">Solteros</option>
                                                        <option value="Casados">Casados</option>
                                                        <option value="Viudos">Viudos</option>
                                                        <option value="Divorciados">Divorciados</option>
                                                        <option value="Separados">Separados</option>
                                                        <option value="Convivientes">Convivientes</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Número de Hijos</label>
                                                    <input type="text" class="form-control" required name="cell_holder" id="cell_holder" placeholder="Ingrese N° de Hijos">
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
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
                                                    <select id="condition_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option value="">--Condición--</option>
                                                        <option value="Contratado">Contratado</option>
                                                        <option value="Nombrado">Nombrado</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Ingreso Contratado :</label>
                                                    <input type="text" class="form-control" required name="date_contracted" id="date_contracted" placeholder="">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha de Ingreso Nombrado :</label>
                                                    <input type="text" class="form-control" required name="date_named" id="date_named" placeholder="Ingrese Fecha de Ingreso Nombrado">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="tb-i">Fecha Ultimo Ascenso :</label>
                                                    <input type="text" class="form-control" required name="date_ascent" id="date_ascent" placeholder="">
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="grade_staff">Grado</label>
                                                    <select id="grade_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option>--Grado--</option>
                                                        <?php
                                                        foreach ($grades as $key => $grade) {
                                                        ?>
                                                            <option value="<?= $grade->name_grade ?>"><?= $grade->name_grade ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="unit_staff">Unidad Origen</label>
                                                    <select id="unit_staff" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option value="">--Unidad Origen--</option>
                                                        <?php
                                                        foreach ($teams as $key => $team) {
                                                            if ($team->id_rol == "0" || $team->id_rol == "1" || $team->id_rol == "2") {
                                                            } else {
                                                        ?>
                                                                <option value="<?= $team->name_rol ?>"><?= $team->name_rol ?></option>
                                                        <?php }
                                                        } ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="group_occup">Grupo Ocupacional</label>
                                                    <select id="group_occup" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
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
                                                    <select id="speciality" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                        <option value="">--Especialidad--</option>
                                                        <?php
                                                        foreach ($specialties as $key => $specialty) {

                                                        ?>
                                                            <option value="<?= $specialty->name_specialty ?>"><?= $specialty->name_specialty ?></option>
                                                        <?php }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row p-t-20">
                                            <div class="col-md-3">
                                                <div class="form-group mb-3">
                                                    <label for="position">Puesto</label>
                                                    <input type="text" class="form-control" required name="position" id="position" placeholder="Ingrese Puesto">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="offset-sm-10 col-md-2">
                                        <button type="submit" class="btn waves-effect waves-light w-100 btn-success text-white" id="btn_frwrd">ENVIAR</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>