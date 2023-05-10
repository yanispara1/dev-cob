<style>
    .pdfview {
        /* Centrado */
        margin: auto;
        display: block;
        /* Tamaño */
        width: 850px;
        height: 90vh;
        /* Mejorar aspecto */
        border-radius: 20px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

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
                                    <a class="text-white" data-action="collapse"><i id="icon_form" class="ti-plus"></i></a>
                                </div>
                            </div>
                            <div class="card-body collapse" id="crd_form">
                                <h3 class="card-title">Correspondencia Recibida</h3>
                                <hr>
                                <div class="row p-t-20">
                                    <div class="col-md-4">
                                        <div class="form-floating mb-3">
                                            <input type="hidden" name="name_form" id="name_form" value="save">
                                            <input type="hidden" name="id_received" id="id_received">
                                            <input type="hidden" name="extension" id="extension">
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

                                            <select id="tb_cl" name="tb_cl" class="  form-control form-select" style="width: 100%; height:36px;position:fixed">
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
                                            <input type="text" class="form-control" name="tb_rp" id="tb_rp" placeholder="Enter Name here" value="lo decreta JEM">
                                            <label for="tb-rp">Recibido Por</label>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <textarea type="text" class="form-control" name="tb_as" id="tb_as" placeholder="Asunto" style="overflow: hidden;"></textarea>
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

                                    <div class="offset-sm-10 col-md-2">
                                        <button type="submit" style="display:none;" class="btn waves-effect waves-light w-100 btn-danger text-white" id="btn_cancel">CANCELAR</button>
                                        <button type="submit" style="display:none;" class="btn waves-effect waves-light w-100 btn-success text-white" id="btn_edit">EDITAR</button>
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
                                        <th style="min-width: 120px;"> N° DE ORDEN</th>
                                        <th style="min-width: 130px;">REMITENTE</th>
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
                                        $ext = "'" . $row->ext_rcvd . "'";

                                    ?>
                                        <tr id="r<?= $row->id_rcvd_cr ?>" onclick="editDecree(<?= $row->id_rcvd_cr ?>,<?= $ext ?>)" class="tr_data" data-id="<?= $row->id_rcvd_cr ?>">
                                            <td> <button class="btn btn-info" OnClick="viewRcvd(<?= $row->id_rcvd_cr . ", '" . $row->ext_rcvd . "'" ?>)"><i class="fas fa-file-image"></i> <?= str_pad($row->id_rcvd_cr, 3, '0', STR_PAD_LEFT) ?></button>
                                                <a class="btn btn-primary" href="<?= base_url('be/archivos-adjuntos-recibido?id=' . $row->id_rcvd_cr) ?>"><i class="fas fa-cloud"></i> </a>
                                            </td>
                                            <td><span id="a_<?= $row->id_rcvd_cr ?>"><?= $row->sender_rcvd ?></span></td>
                                            <td><span id="b_<?= $row->id_rcvd_cr ?>"><?= $row->class_rcvd ?></span></td>
                                            <td><span id="c_<?= $row->id_rcvd_cr ?>"><?= $row->indicative_rcvd ?></span></td>
                                            <td><span id="d_<?= $row->id_rcvd_cr ?>"><?= $row->date_rcvd ?></span></td>
                                            <td><span id="e_<?= $row->id_rcvd_cr ?>"><?= $row->clasif_rcvd ?></span></td>
                                            <td><span id="f_<?= $row->id_rcvd_cr ?>"><?= $row->issue_rcvd ?></span></td>
                                            <td><span id="g_<?= $row->id_rcvd_cr ?>"><?= $row->rcvd_by ?></span></td>
                                            <?php if ($type_user) { ?>
                                                <td id="d<?= $row->id_rcvd_cr ?>">

                                                    <?php
                                                    if ($row->decree == "0") {
                                                    ?>
                                                        <button class="btn waves-effect waves-light w-100 btn-danger" OnClick="decree( 0, <?= $row->id_rcvd_cr ?>,<?= $row->mode_decree ?>,<?= $row->urg ?>)"> No Decretado</button>
                                                    <?php
                                                    } else {
                                                    ?>
                                                        <button class="btn waves-effect waves-light w-100 btn-primary" OnClick="decree( <?= $row->decree ?>, <?= $row->id_rcvd_cr ?>,<?= $row->mode_decree ?>,<?= $row->urg ?>)"><?= $row->name_rol ?></button>
                                                </td>
                                            <?php
                                                    }
                                            ?>
                                        <?php }
                                            if ($this->session->userdata('user_type') == $row->decree) { ?>
                                            <td><a href="<?= base_url('be/correspondecias-remitidas#' . $row->id_rcvd_cr) ?>" class="btn btn-success">Responder</a> </td>

                                        <?php }
                                            $id_frwrd =  remitida($row->id_rcvd_cr);
                                            status_received($row->status, $row->id_rcvd_cr, $id_frwrd); ?>

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
            <div class="modal-dialog modal-xl modal-dialog-centered">
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
        <div id="view_pdf" class="modal" tabindex="-1" role="dialog" aria-labelledby="tooltipmodel" aria-hidden="true" style="background:transparent">
            <div class="modal-dialog modal-xl modal-dialog-centered">
                <div class="modal-content" style="background-color: transparent; border:0px">
                    <object class="pdfview" type="application/pdf" id="object_pdf"></object>
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
                        <form id="send_decree">
                            <div class="form-group">
                                <label id="lbl_user" for="recipient-name" class="form-label"></label>
                                <select id="slct_rol" name="slct_rol" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">
                                </select>
                                <input type="hidden" id="id_cr">
                            </div>
                            <div class="form-group">
                                <label id="lbl_user" for="recipient-name" class="form-label"></label>
                                <select id="slct_decree" name="slct_decree" class="select2 form-control form-select" style="width: 100%; height:36px;position:fixed">

                                </select>
                            </div>
                            <div class="form-group">
                                <input type="radio" class="form-check-input" value="1" name="urg" id="urg">
                                <label class="label label-warning" for="urg">Urgente</label>
                                <input type="radio" class="form-check-input" value="2" name="urg" id="m_urg">
                                <label class="label label-danger" for="m_urg">Muy Urgente</label>
                            </div>
                            <div class="form-group">
                                <textarea type="text" class="form-control" name="issue_decree" id="issue_decree" placeholder="Observaciones" style="overflow: hidden;"></textarea>
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