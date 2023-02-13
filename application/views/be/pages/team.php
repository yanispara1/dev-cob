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
                        <h4 class="text-themecolor">Departamentos</h4>

                    </div>
                    <div class="col-md-7 align-self-center text-end">
                        <div class="d-flex justify-content-end align-items-center">
                            <ol class="breadcrumb justify-content-end">
                                <li class="breadcrumb-item"><a href="<?= base_url() ?>">Inicio</a></li>
                                <li class="breadcrumb-item active">Departamentos</li>
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
                                <div class="row el-element-overlay">
                                    <div class="col-md-12">
                                        <h4 class="card-title">Departamento <?= $rol->name_rol ?></h4>
                                        <h6 class="card-subtitle m-b-20 text-muted">Te encuentras en el Departamento de
                                            <code><?= $rol->name_rol ?></code>
                                        </h6>
                                    </div>
                                    <?php foreach ($dep as $key => $d) {

                                    ?>
                                        <div class="col-lg-3 col-md-6">
                                            <div class="card">
                                                <div class="el-card-item">
                                                    <div class="el-card-avatar el-overlay-1">
                                                        <img src="<?= base_url($d->img_user) ?>" alt="user" />

                                                    </div>
                                                    <div class="el-card-content">
                                                        <h4 class="box-title"><?= ucwords(strtolower($d->lastname_user . " " . $d->name_user)) ?></h4>
                                                        <h6><?php echo $d->name_range;
                                                            if($rol->jefe_rol == $d->id_user){
                                                                echo " (JEFE DE DEPARTAMENTO)";
                                                            }
                                                        ?></h6>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php  } ?>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>