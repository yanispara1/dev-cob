        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
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
                        <h4 class="text-themecolor">Gestionar Usuarios</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-end">
                        <div class="d-flex justify-content-end align-items-center">
                            <ol class="breadcrumb justify-content-end">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                                <li class="breadcrumb-item active">Usuarios</li>
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
                                <h4 class="card-title"></h4>
                                <div class="right-page-header">
                                    <div class="align-self-center">
                                        <h4 class="card-title m-t-10">Usuarios COBIENE</h4>
                                    </div>
                                    <div class="table-responsive m-t-40">
                                        <table id="data-users" class="display nowrap table table-hover table-striped border" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>Nombre y Apellidos</th>
                                                    <th>Rango</th>
                                                    <th>CIP</th>
                                                    <th>Rol</th>
                                                    <th>Estado</th>
                                                    <th>Fecha</th>
                                                    <th>Acciones</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php
                                                foreach ($rows as $key => $row) {
                                                    $n = $row->id_user
                                                ?>

                                                    <tr id="u<?= $n ?>">
                                                        <td id="a<?= $n ?>"><?= $row->name_user . " " . $row->lastname_user; ?></td>
                                                        <td><?= $row->name_range ?></td>
                                                        <td><?= $this->encryption->decrypt($row->cip_user) ?></td>
                                                        <td id="d<?= $n ?>"><?= $row->name_rol; ?></td>
                                                        <td id="f<?= $n ?>">
                                                            <?= $row->name_status ?>
                                                        </td>
                                                        <td><?= fecha($row->create_user) ?></td>
                                                        <td>
                                                            <button onclick="range(<?= $row->id_user ?>)" class="btn btn-warning waves-effect waves-light" type="button" style="color: black;" data-toggle="tooltip" data-placement="right" title="Modificar Rol"> <i class="fas fa-id-card-alt"></i> </button>
                                                            <button onclick="status(<?= $row->id_user ?>)" class="btn btn-info waves-effect waves-light" type="button" style="color: black;" data-toggle="tooltip" data-placement="right" title="Modificar Estado"> <i class="fas fa-unlock-alt"></i> </button>
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End PAge Content -->
                    <!-- ============================================================== -->

                    <div class="modal mdl_range" role="dialog">
                        <div class="modal-dialog modal-dialog-centered zoomIn animated">
                            <div class="modal-content">
                                <div class="modal-header bg-secondary">
                                    <h4 class="modal-title">
                                        Modificar Rol de Usuario
                                    </h4>
                                </div>
                                <div class="modal-body bg-secondary">
                                    <form>
                                        <div class="form-group">
                                            <input type="hidden" id="id_user">
                                            <input type="hidden" id="name_user">
                                            <label id="lbl_user" for="recipient-name" class="form-label"></label>
                                            <select id="slct_rol" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer bg-secondary">
                                    <button type="button" class="btn btn-danger waves-effect" id="close">
                                        Cerrar
                                    </button>
                                    <button id="btn_modify" type="button" class="btn btn-primary waves-effect waves-light text-white">
                                        Modificar rol
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal mdl_status" role="dialog">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header bg-secondary">
                                    <h4 class="modal-title">
                                        Modificar Estado de Usuario
                                    </h4>
                                </div>
                                <div class="modal-body bg-secondary">
                                    <form>
                                        <div class="form-group">
                                            <input type="hidden" id="user">
                                            <input type="hidden" id="name">
                                            <label id="lbl_nsts" for="recipient-name" class="form-label"></label>
                                            <select id="slct_sts" class="form-control form-select" style="width: 100%; height:36px;position:fixed">
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer bg-secondary">
                                    <button type="button" class="btn btn-danger waves-effect" id="close_sts">
                                        Cerrar
                                    </button>
                                    <button id="btn_msts" type="button" class="btn btn-primary waves-effect waves-light text-white">
                                        Modificar rol
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


                    