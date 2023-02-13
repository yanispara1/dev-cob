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
                <h4 class="text-themecolor">Blank Page</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active"></li>
                    </ol>
                    <button type="button" class="btn btn-info d-none d-lg-block m-l-15 text-white"><i class="fa fa-plus-circle"></i> Create New</button>
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
                            <div class="drive-wrapper drive-grid-view">
                                <div class="grid-items-wrapper" id="div_one">
                                    <?php
                                    foreach ($rows as $key => $row) {
                                        $name = "'" . $row->name . "'";
                                        $ext = "'" . $row->ext . "'";
                                    ?>

                                        <div class="drive-item module text-center" id="f_<?= $row->id_file ?>">
                                            <div class="drive-item-inner module-inner">
                                                <div class="drive-item-title"><a href="#"><?= $row->name ?></a></div>
                                                <div class="drive-item-thumb">
                                                    <a href="#"><?=viewExtension($row->ext,$name,$id)?></a>
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