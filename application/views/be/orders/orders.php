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
                                                    <td><?= status_order($row->line_order) ?></td>
                                                    <?php
                                                    if ($row->status_order == '1') {
                                                    ?>
                                                        <td></td>

                                                    <?php

                                                    } else {
                                                    ?>
                                                        <td><?= $row->status_order ?></td>

                                                    <?php
                                                    }
                                                    ?>
                                                    <td><button>acciones</button></td>
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