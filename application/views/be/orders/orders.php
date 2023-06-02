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
                                <div class="row">
                                    <table id="data-orders" class="table table-responsive table-striped border">
                                        <thead>
                                            <tr>
                                                <th>N°</th>
                                                <th style="min-width: 150px;">EMISOR</th>
                                                <th style="min-width: 200px;"">EQUIPO</th>
                                                <th style=" min-width: 100px;">DPTO/UNIDAD</th>
                                                <th style="min-width: 180px;">FECHA</th>
                                                <th style="min-width: 100px;">ESTADO</th>
                                                <th style="min-width: 100px;">INSPECCIÓN</th>
                                                <th style="min-width: 100px;">ACCIONES</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbody">
                                            <?php
                                            foreach ($rows as $key => $row) {
                                            ?>
                                                <tr id="">
                                                    <td><?= $row->id_order ?></td>
                                                    <td><?= $row->name_order ?></td>
                                                    <td><?= $row->ep_order ?></td>
                                                    <td><?= $row->dpto_order ?></td>
                                                    <td><?= fecha($row->register_order) ?></td>
                                                    <td id="td_so<?= $row->id_order ?>"><?= status_order($row->line_order, $row->id_order) ?></td>
                                                    <?php
                                                    if ($row->status_order == '1') {
                                                    ?>
                                                        <td><button class="btn btn-info">Inspección</button></td>

                                                    <?php

                                                    } else {
                                                    ?>
                                                        <td><?= $row->status_order ?></td>

                                                    <?php
                                                    }
                                                    ?>
                                                    <td>

                                                        <button class="btn btn-danger">Eliminar</button>
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

                <div id="mdl_status" class="modal zoomIn animated" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
                    <div class="modal-dialog modal-xl modal-dialog-centered modal-lg">
                        <div class="modal-content">
                            <div class="modal-body">
                                <h3 class="card-title" id="vcenter">ESTADO DE ORDEN : <code id="id_order"></code> </h3>
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <button id="btn_frm" type="button" class="btn btn-success float-end  btn-rounded text-white">
                                            <i class=" fas fa-plus"></i> Estado
                                        </button>
                                        <button id="btn_close" type="button" class="btn btn-light float-end   btn-rounded">
                                            <i class="fas fa-window-close"></i> Cerrar
                                        </button>
                                    </div>
                                </div><br>
                                <div style="display:none" class="loading">Loading&#8230;</div>

                                <ul class="timeline" id="timeline">
                                </ul>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                </div>



                <div id="mdl_frm" class="modal zoomIn animated" tabindex="-1" role="dialog" aria-labelledby="vcenter" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg">
                        <div class="modal-content" style="background-color: #E6F0DE">
                            <div class="modal-body mdl_bdy">
                                <form class="" id="send_status">
                                    <div class="form-group">
                                        <select name="select2" id="name_status" style="width:100%; height:3em">
                                            <option value="01">Pendiente</option>
                                            <option value="02">Proceso</option>
                                            <option value="03">Finalizado</option>
                                            <option value="04">Cancelado</option>
                                        </select>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                        <textarea id="textarea_editor" class="textarea_editor form-control" rows="15" placeholder="Ingresar texto ..."></textarea>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <button id="btn_send" type="button" class="btn btn-success float-end  btn-rounded text-white">
                                                Guardar
                                            </button>
                                            <button id="close_status" type="button" class="btn btn-light float-end   btn-rounded">
                                                Cerrar
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                </div>