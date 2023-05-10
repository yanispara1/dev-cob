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
                        <h4 class="text-themecolor">Ordenes de Servicio</h4>
                    </div>
                    <div class="col-md-7 align-self-center text-end">
                        <div class="d-flex justify-content-end align-items-center">
                            <ol class="breadcrumb justify-content-end">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                                <li class="breadcrumb-item active">Ordenes de Servicio</li>
                            </ol>

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="content-utilities">
                                    <div class="page-nav">
                                        <button class="btn btn-primary btn-rounded waves-effect waves-light"><i class="fas fa-plus"></i> Agregar Inspección</button>
                                    </div>
                                    <hr>
                                </div>
                                <div class="row">
                                    <table id="data-inspection" class="table table-responsive table-striped border">
                                        <thead>
                                            <tr>
                                                <th>N°</th>
                                                <th style="min-width: 300px;"">Emisor</th>
                                                <th style=" min-width: 200px;">Fecha de Públicación</th>
                                                <th style="min-width: 150px;">Orden</th>
                                                <th style="min-width: 300px;">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody">
                                            <?php
                                            foreach ($rows as $key => $row) {
                                            ?>
                                                <tr>
                                                    <td><?= $row->id_documento ?></td>
                                                    <td><?php
                                                        $user = $this->Order_model->get_data(array('id_user' => $row->id_usuario));
                                                        echo $user->name_user . " " . $user->lastname_user;
                                                        ?></td>
                                                    <td><?= fecha($row->fecha_registro) ?></td>
                                                    <td><a href="">OR<?= $row->orden ?></a></td>
                                                    <td>
                                                        <button class="btn btn-info">editar</button>
                                                        <button class="btn btn-primary">descargar</button>
                                                        <button class="btn btn-danger">eliminar</button>
                                                    </td>
                                                </tr>

                                            <?php
                                            } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>