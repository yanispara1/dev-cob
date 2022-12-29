<!DOCTYPE html>
<html lang=es_MX">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url(); ?>/assets/images/cob.png">
    <title>COBIENE | Registrate </title>
    <!-- page css -->
    <link href="<?= base_url(); ?>assets/node_modules/register-steps/steps.css" rel="stylesheet">
    <link rel="stylesheet" href="<?= base_url(); ?>/assets/node_modules/dropify/dist/css/dropify.min.css">
    <link href="<?= base_url(); ?>dist/css/pages/register3.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/node_modules/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="<?= base_url(); ?>dist/css/style.min.css" rel="stylesheet">
    <link href="<?= base_url(); ?>assets/node_modules/toast-master/css/jquery.toast.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="skin-default card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Cargando...</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper" class="step-register">
        <div class="register-box">
            <div class="">
                <a href="<?= base_url(); ?>" class="text-center m-b-40"><img src="<?= base_url(); ?>/assets/images/cob.png" alt="" class="rounded mx-auto d-block" width="10%"></a>
                <!-- multistep form -->
                <form id="msform">
                    <!-- progressbar -->
                    <ul id="eliteregister">
                        <li class="active">Datos de Accesso</li>
                        <li>Datos Personales</li>
                        <li>Registrarse</li>
                    </ul>
                    <!-- fieldsets -->
                    <fieldset>
                        <h2 class="fs-title">Datos de Accesso</h2>
                        <h3 class="fs-subtitle">Paso 1</h3>
                        <div class="form-floating mb-3">
                            <input class="form-control input_numb" type="text" name="cip" placeholder="Ingrese  CIP" id="cip"  maxlength="9" />
                            <label for="cip">Ingrese CIP</label>
                            <div id="respuesta"></div>
                        </div>

                        <input type="button" name="next" class="next action-button" value="Siguiente" id="btnone" disabled/>
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Datos Personales</h2>
                        <h3 class="fs-subtitle">Paso 2</h3>

                        <div class="form-floating">
                            <input class="form-control input_txt" type="text" name="name" placeholder="Ingrese Nombres" />
                            <label for="">Ingrese Nombres</label>
                        </div>

                        <div class="form-floating">
                            <input class="form-control input_txt" type="text" name="lastname" placeholder="Ingrese Apellidos" />
                            <label for="">Ingrese Apellidos</label>
                        </div>

                        <div class="form-floating">
                            <input class="form-control input_numb" type="text" name="dni" placeholder="DNI" id="dni" maxlength="8"/>
                            <div id="respuestadni"></div> <label for="">Ingrese DNI</label>
                        </div>

                        <div class="form-floating">
                            <input class="form-control" type="text" name="email" placeholder="Correo Electrónico" id="mail" />
                            <div id="respuestamail"></div> <label for="">Ingrese Correo Electrónico</label>
                        </div>

                        <div class="form-floating">
                            <input class="form-control input_numb" type="text" name="phone" placeholder="N° Celular" id="phone" maxlength="9"/>
                            <div id="respuestaphone"></div> <label for="">Ingrese N° Celular</label>
                        </div>

                        <select name="range_user" id="slct_rg" class="select2 form-control form-select" style="width: 100%; height:36px;">
                            <option>Seleccionar Grado</option>
                            <optgroup label="Personal de Oficiales">
                                <?php
                                foreach ($range1 as $range) {
                                    echo '<option value="' . $range['id_range'] . '">' . $range['name_range'] . '</option>';
                                }
                                ?>
                            </optgroup>
                            <optgroup label="Personal Auxiliar o Subalterno">
                                <?php
                                foreach ($range2 as $range) {
                                    echo '<option value="' . $range['id_range'] . '">' . $range['name_range'] . '</option>';
                                }
                                ?>
                            </optgroup>
                            <optgroup label="Tropa Servicio Militar y Especialista">
                                <?php
                                foreach ($range3 as $range) {
                                    echo '<option value="' . $range['id_range'] . '">' . $range['name_range'] . '</option>';
                                }
                                ?>
                            </optgroup>
                        </select>

                        <input type="button" name="previous" class="previous action-button" value="Anterior" />
                        <input type="button" name="next" class="next action-button" value="Siguiente" id="nxt_2" disabled/>
                    </fieldset>
                    <fieldset>
                        <h2 class="fs-title">Políticas de Privacidad</h2>
                        <h3 class="fs-subtitle">Paso Final</h3>
                        <p id="prv"><input type="checkbox" class="form-check-input" id="chk" style="width:auto; appearance:auto;">
                            He leído y acepto la <a href="#">Política de Privacidad</a> </p>


                        <input type="button" name="previous" class="previous action-button white" value="Anterior" id="anterior" />
                        <input type="submit" name="submit" class="action-button" value="Registrar" id="register" />
                    </fieldset>

                </form>
                <div class="clear"></div>
            </div>
        </div>
    </section>
    <div id="whatsapp-chat" class="hide">
        <div class="header-chat">
            <div class="head-home">
                <h3>Hola!</h3>
                <p>
                    Haga clic en uno de nuestros representantes a continuación para chatear en WhatsApp o envíenos un correo electrónico a contacto@cobiene.mil.pe
                </p>
            </div>
            <div class="get-new hide">
                <div id="get-label"></div>
                <div id="get-nama"></div>
            </div>
        </div>
        <div class="home-chat">
            <!-- Info Contact Start -->
            <a class="informasi" href="javascript:void" title="Chat Whatsapp">
                <div class="info-avatar">
                    <img src="https://2.bp.blogspot.com/-y6xNA_8TpFo/XXWzkdYk0MI/AAAAAAAAA5s/RCzTBJ_FbMwVt5AEZKekwQqiDNqdNQJjgCLcBGAs/s70/supportmale.png" />
                </div>
                <div class="info-chat">
                    <span class="chat-label">Soporte</span>
                    <span class="chat-nama">
                        Servicio al Usuario</span>
                </div>
                <span class="my-number">+51 929 054 672</span>
            </a>
            <!-- Info Contact End 
            <div class="blanter-msg">
                Call us to <b>+62123456789</b> from <i>0:00hs a 24:00hs</i>
            </div>-->
        </div>
        <div class="start-chat hide">
            <div class="first-msg"><span>¡Hola! Qué puedo hacer por ti?</span></div>
            <div class="blanter-msg">
                <textarea id="chat-input" placeholder="escribe una respuesta " maxlength="120" row="1"></textarea>
                <a href="javascript:void;" id="send-it">Enviar</a>
            </div>
        </div>
        <div id="get-number"></div>
        <a class="close-chat" href="javascript:void">×</a>
    </div>
    <a class="blantershow-chat" href="javascript:void" title="Show Chat"><i class="fab fa-whatsapp"></i>Le puedo ayudar en algo?</a>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="<?= base_url(); ?>assets/node_modules/jquery/dist/jquery.min.js"></script>


    <!-- Bootstrap tether Core JavaScript -->
    <!-- Menu Plugin JavaScript -->
    <script src="<?= base_url(); ?>assets/node_modules/select2/dist/js/select2.full.min.js" type="text/javascript"></script>

    <script src="<?= base_url(); ?>assets/node_modules/register-steps/jquery.easing.min.js"></script>
    <script src="<?= base_url(); ?>assets/node_modules/register-steps/register-init.js"></script>
    <!-- jQuery file upload -->
    <script src="<?= base_url(); ?>assets/node_modules/dropify/dist/js/dropify.min.js"></script>

    <!-- js pages files -->
    <script src="<?= base_url(); ?>/assets/node_modules/toast-master/js/jquery.toast.js"></script>

    <script src="<?= base_url(); ?>dist/js/pages/register.js"></script>
    <script src="<?= base_url(); ?>dist/js/utilities.js"></script>
</body>

</html>