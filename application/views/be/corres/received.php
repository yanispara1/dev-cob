<style>
    .zoom {
        display: inline-block;
        position: relative;
    }

    /* magnifying glass icon */
    .zoom:after {
        content: '';
        display: block;
        width: 33px;
        height: 33px;
        position: absolute;
        top: 0;
        right: 0;
        background: url(icon.png);
    }

    .zoom img {
        display: block;
    }

    .zoom img::selection {
        background-color: transparent;
    }

    .form h2 {
        text-align: center;
        color: #acacac;
        font-size: 40px;
        font-weight: 400;
        height: auto;
    }

    .form .grid {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        gap: 20px;
        margin-bottom: 1rem;
    }

    .form .grid .form-element {
        width: 200px;
        height: 200px;
        box-shadow: 0px 0px 20px 5px rgba(100, 100, 100, 0.1);
    }

    .form .grid .form-element input {
        display: none;
    }

    .form .grid .form-element img {
        width: 200px;
        height: 200px;
        object-fit: cover;
    }

    .form .grid .form-element div {
        position: relative;
        height: 40px;
        margin-top: -40px;
        background: rgba(0, 0, 0, 0.5);
        text-align: center;
        line-height: 40px;
        font-size: 13px;
        color: #f5f5f5;
        font-weight: 600;
    }

    .form .grid .form-element div span {
        font-size: 40px;
    }
</style>

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
                <h4 class="text-themecolor">Correspondencias Recibidas</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                        <li class="breadcrumb-item active">C. Recibidas</li>
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
            <?php if ($this->session->userdata('user_type') == 11) { ?>

                <div class="col-12">
                    <form id="send_rcvd" enctype="multipart/form-data">
                        <div class="card" id="data_fam">
                            <div class="card-header text-white bg-info">
                                <b>Agregar Nueva Correspondencia Recibida</b>
                                <div class="card-actions">
                                    <a class="text-white" data-action="collapse"><i class="ti-plus"></i></a>
                                </div>
                            </div>
                            <div class="card-body collapse" id="crd_form">
                                <h3 class="card-title">Correspondencia Recibida</h3>
                                <hr>
                                <div class="row p-t-20">
                                    <div class="col-md-4">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" required name="tb_r" id="tb_r" placeholder="Enter Name here">
                                            <label for="tb-r">Remitente</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-group mb-3">
                                            <label for="tb-d">Clase</label>
                                            <select id="tb_c" name="tb_c" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                <option value="Oficios">Oficios</option>
                                                <option value="Fax">Fax</option>
                                                <option value="Solicitud">Solicitud</option>
                                                <option value="Directiva">Directiva</option>
                                                <option value="Informe">Informe</option>
                                                <option value="Hoja de Tramite">Hoja de Tramite</option>
                                                <option value="O.G.E">O.G.E</option>
                                                <option value="Hoja de coordinación">Hoja de coordinación</option>
                                                <option value="Oficio Multiple">Oficio Multiple</option>
                                                <option value="Fax Multiple">Fax Multiple</option>
                                                <option value="Otros">Otros</option>
                                                <optgroup label="Empresas">
                                                    <option value="Canta">Canta</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" required name="tb_i" id="tb_i" placeholder="Enter Name here">
                                            <label for="tb-d">Inidicativo</label>
                                        </div>
                                    </div>
                                    <!--/span-->
                                </div>
                                <div class="row">

                                    <!--/span-->
                                    <div class="col-md-4">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" required name="tb_d" id="tb_d" value="">
                                            <label for="tb-d">Fecha</label>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group mb-3">
                                            <label for="tb-d">Clasificación</label>

                                            <select id="tb_cl" name="tb_cl" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">
                                                <option value="Común">Común</option>
                                                <option value="Olaya">Olaya</option>
                                                <option value="O.P.E">O.P.E</option>
                                                <option value="E. Inf.">E. Inf.</option>
                                                <option value="Urgente">Urgente</option>
                                                <option value="Muy urgente">Muy urgente</option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" required name="tb_rp" id="tb_rp" placeholder="Enter Name here">
                                            <label for="tb-rp">Recibido Por</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" name="tb_as" id="tb_as" placeholder="Asunto"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                    <!--/span-->
                                </div>
                                <div class="row">
                                    <div class="form">
                                        <div class="grid">
                                            <div class="form-element">
                                                <input type="file" id="file-1" accept="image/*" name="file_1">
                                                <label for="file-1" id="file-1-preview">
                                                    <img id="img_r" src="<?= base_url() ?>assets/images/square_p.jpg" alt="">
                                                    <div>
                                                        <span>+</span>
                                                    </div>
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">

                                    </div>
                                    <div class="offset-sm-10 col-md-2">
                                        <button type="submit" class="btn waves-effect waves-light w-100 btn-success text-white" id="btn_rcvd">ENVIAR</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- ============================================================== -->
                <!-- Start Card User -->
                <!-- ============================================================== -->
            <?php } ?>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <table id="table_rcvd" class="table table-responsive table-striped border">
                                <thead>
                                    <tr>
                                        <th style="min-width: 80px;"> N° DE ORDEN</th>
                                        <th style="min-width: 100px;">REMITENTE</th>
                                        <th style="min-width: 100px;">CLASE</th>
                                        <th style="min-width: 100px;">INDICATIVO</th>
                                        <th style="min-width: 100px;">FECHA</th>
                                        <th style="min-width: 100px;">CLASIF. </th>
                                        <th style="min-width: 200px;">ASUNTO</th>
                                        <th style="min-width: 100px;">RECIBIDO POR</th>
                                        <?php if ($type_user == true) { ?>
                                            <th style="min-width: 130px;">DECRETADO</th>
                                        <?php } else { ?>
                                            <th style="min-width: 130px;">ACCIONES</th>
                                        <?php } ?>
                                        <th style="min-width: 130px;">ESTADO</th>

                                    </tr>
                                </thead>

                                <tbody id="tbody">
                                    <?php
                                    foreach ($rows as $key => $row) {
                                    ?>
                                        <tr id="r<?= $row->id_rcvd_cr ?>">
                                            <td> <button class="btn btn-info" OnClick="viewRcvd(<?= $row->id_rcvd_cr . ", '" . $row->ext_rcvd . "'" ?>)"><i class="fas fa-file-image"></i> <?= str_pad($row->id_rcvd_cr, 3, '0', STR_PAD_LEFT) ?></button></td>
                                            <td><?= $row->sender_rcvd ?></td>
                                            <td><?= $row->class_rcvd ?></td>
                                            <td><?= $row->indicative_rcvd ?></td>
                                            <td><?= $row->date_rcvd ?></td>
                                            <td><?= $row->clasif_rcvd ?></td>
                                            <td><?= $row->issue_rcvd ?></td>
                                            <td><?= $row->rcvd_by ?></td>
                                            <?php if ($type_user) { ?>
                                                <td id="d<?= $row->id_rcvd_cr ?>">

                                                    <?php
                                                    if ($row->decree == "0") {
                                                    ?>
                                                        <button class="btn waves-effect waves-light w-100 btn-danger" OnClick="decree( 0, <?= $row->id_rcvd_cr ?>)"> No Decretado</button>
                                                </td>
                                            <?php
                                                    } else {
                                            ?>
                                                <button class="btn waves-effect waves-light w-100 btn-primary" OnClick="decree( <?= $row->decree ?>, <?= $row->id_rcvd_cr ?>)"><?= $row->name_rol ?></button>
                                            <?php
                                                    } 
                                            ?>
                                            

                                        <?php }
                                            if ($this->session->userdata('user_type') == $row->decree) { ?>
                                            <td><a href="<?= base_url('be/correspondecias-remitidas#' . $row->id_rcvd_cr) ?>" class="btn btn-success">Responder</a></td>
                                        
                                        <?php } status_received($row->status);?>
                                        
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

        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <div id="tooltipmodals" class="modal" tabindex="-1" role="dialog" aria-labelledby="tooltipmodel" aria-hidden="true" style="background:transparent">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4>Foto Correspondecia Recibida</h4>
                        <button type="button" onclick="closeRcvd()" class="btn-close" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <center>
                            <div id="spinn_img" class="spinner-grow" style="width: 5rem; height: 5rem;" role="status">
                                <span class="sr-only">Loading...</span>
                            </div>
                            <img style="display: none;" class="img-fluid" alt="user" id="view_img" />
                        </center>
                    </div>
                    <div class="modal-footer">
                        <a href="" target="_blank" class="btn-success"><i class="fab fa-whatsapp"></i></a>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>


        <div class="modal" tabindex="-1" role="dialog" aria-labelledby="tooltipmodel" aria-hidden="true" id="decree">
            <div class="modal-dialog modal-dialog-centered zoomIn animated">
                <div class="modal-content">
                    <div class="modal-header bg-secondary">
                        <h4 id="title_decree" class="modal-title"></h4>
                    </div>
                    <div class="modal-body bg-secondary">
                        <form>
                            <div class="form-group">
                                <label id="lbl_user" for="recipient-name" class="form-label"></label>
                                <select id="slct_rol" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">
                                </select>
                                <input type="hidden" id="id_cr">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer bg-secondary">
                        <button type="button" class="btn btn-danger waves-effect" id="close">
                            Cerrar
                        </button>
                        <button id="btn_decree" type="button" class="btn btn-primary waves-effect waves-light text-white">
                            Modificar rol
                        </button>
                    </div>
                </div>
            </div>
        </div>