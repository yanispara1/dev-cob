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
                <h4 class="text-themecolor">Archivos Adjuntos (Correspondecia Remitida)</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item"><a href="<?= base_url() ?>">Inicio</a></li>
                        <li class="breadcrumb-item"><a href="<?= base_url('be/correspondecias-recibidas') ?>">Remitidas</a></li>
                        <li class="breadcrumb-item Active"><a href="">Archivos Adjuntos</a></li>
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

                            <div class="content-utilities">
                                <div class="page-nav">
                                    <div class="fileupload btn btn-primary btn-rounded waves-effect waves-light">
                                        <span><i class="fas fa-upload"></i> &nbsp; Subir Archivos Adjuntos</span>
                                        <input type="file" multiple class="upload" name="inputArchivos" id="inputArchivos" accept=".png,.jpg,.jpeg">
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <?php if (jefeJem($this->session->userdata('user_id'))) {
                            ?>
                                <div class="drive-wrapper drive-grid-view">
                                    <div class="grid-items-wrapper" id="div_two">
                                        <h3>ARCHIVO PRINCIPAL </h3>
                                        <div class="drive-item module text-center">
                                            <div class="drive-item-inner module-inner">
                                                <div class="drive-item-title"><a href="#">Archivo Principal</a></div>
                                                <div class="drive-item-thumb">
                                                    <a href="#"></a>
                                                </div>
                                            </div>
                                            <div class="drive-item-footer module-footer">
                                                <ul class="utilities list-inline">
                                                    <li><a class="text-dark" href="<?= base_url('assets/images/cr_forwarded/' . $rcvd->id_frwd . '.' . $rcvd->ext_frwrd_d) ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download" download="<?= $rcvd->id_frwd ?>"><i class="fa fa-download"></i></a>
                                                    </li>
                                                    <?php if ($rcvd->answer_jem == null) { ?>
                                                        <li><button id="answer_response" data-id="<?= $rcvd->id_frwd ?>" style="border:none; background:transparent" class="text-dark"><i class="fas fa-pencil-alt"></i></button></li>
                                                    <?php } ?>
                                                </ul>
                                            </div>
                                        </div>
                                        <?php if ($rcvd->answer_jem != null) {
                                            $jem = "'" . $rcvd->answer_jem . "'" ?>

                                            <div class="drive-item module text-center" id="ans<?=$rcvd->id_frwd?>">
                                                <div class="drive-item-inner module-inner">
                                                    <div class="drive-item-title"><a href="#">Archivo Firmado</a></div>
                                                    <div class="drive-item-thumb">
                                                        <a href="#"></a>
                                                    </div>
                                                </div>
                                                <div class="drive-item-footer module-footer">
                                                    <ul class="utilities list-inline">
                                                        <li><a class="text-dark" href="<?= base_url('assets/images/cr_forwarded/' . $rcvd->answer_jem) ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download" download="<?= $rcvd->answer_jem ?>"><i class="fa fa-download"></i></a>
                                                        </li>
                                                        <li><button style="border:none; background:transparent" onclick="deleteAnswer(<?= $jem . ',' . $rcvd->id_frwd . ',' .  $rcvd->rcvd_corr ?>)" class="text-dark" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="fa fa-trash"></i></button></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        <?php } ?>
                                    </div>
                                    <hr>
                                </div>
                            <?php
                            } ?>

                            <div class="drive-wrapper drive-grid-view">
                                <div class="grid-items-wrapper" id="div_one">
                                    <h3>ARCHIVOS ADJUNTOS</h3>
                                    <?php
                                    foreach ($rows as $key => $row) {
                                        $name = "'" . $row->name . "'";
                                        $ext = "'" . $row->ext_frwrd_d . "'";
                                    ?>

                                        <div class="drive-item module text-center" id="f_<?= $row->id_file ?>">
                                            <div class="drive-item-inner module-inner">
                                                <div class="drive-item-title"><a href="#"><?= $row->name ?></a></div>
                                                <div class="drive-item-thumb">
                                                    <a href="#"><?= viewExtension($row->ext_frwrd_d, $row->name, $id,'forwarded') ?></a>
                                                </div>
                                            </div>
                                            <div class="drive-item-footer module-footer">
                                                <ul class="utilities list-inline">
                                                    <li><a class="text-dark" href="<?= base_url('assets/files/forwarded/' . $id . "/" . $row->name) ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download" download="<?= $row->name ?>"><i class="fa fa-download"></i></a>
                                                    </li>
                                                    <li><button style="border:none; background:transparent" onclick="deleteFile(<?= $row->id_file . ',' . $id . ',' . $name ?>)" class="text-dark" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="fa fa-trash"></i></button></li>
                                                </ul>
                                            </div>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" tabindex="-1" role="dialog" aria-labelledby="tooltipmodel" aria-hidden="true" id="answer">
            <div class="modal-dialog modal-dialog-centered zoomIn animated">
                <div class="modal-content">
                    <div class="modal-header bg-secondary">
                        <h4 id="title_decree" class="modal-title"></h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body bg-secondary">
                        <form id="send_answer">
                            <div class="form-group">
                                <input type="hidden" id="id_frwd">
                                <input type="hidden" id="id_rcvd" value="<?= $rcvd->rcvd_corr ?>">
                                <center>
                                    <div class="fileupload btn btn-success btn-rounded waves-effect waves-light">
                                        <span><i class="fas fa-upload"></i> &nbsp; Subir Archivo Firmado</span>
                                        <input type="file" multiple class="upload" name="file_answer" id="file_answer" accept="*">
                                    </div>
                                </center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>