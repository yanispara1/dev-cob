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
                <h4 class="text-themecolor">Starter Page</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb justify-content-end">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Starter Page</li>
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
                <form id="send_rmt" enctype="multipart/form-data">
                    <div class="card" id="data_fam">
                        <div class="card-header text-white bg-info">
                            <b>Remitir Correspondencia</b>
                            <div class="card-actions">
                                <a class="text-white" data-action="collapse"><i class="ti-plus"></i></a>
                            </div>
                        </div>
                        <div class="card-body collapse show" id="crd_form">
                            <h3 class="card-title">Remitir una Correspondencia</h3>
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
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" required name="tb_c" id="tb_c" placeholder="Enter Name here">
                                        <label for="tb-c">Clase</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" required name="tb_i" id="tb_i" placeholder="Enter Name here">
                                        <label for="tb-i">Indicativo</label>
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
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" required name="tb_cl" id="tb_cl" placeholder="Enter Name here">
                                        <label for="tb-cl">Clasificación</label>
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

        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        This is some text within a card block.
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->

        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->