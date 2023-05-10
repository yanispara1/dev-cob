<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--Toaster Popup message CSS -->
    <link href="<?= base_url(); ?>assets/node_modules/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url(); ?>/assets/images/cob.png">
    <title>COBIENE | Login</title>

    <!-- page css -->
    <link href="<?= base_url(); ?>/dist/css/pages/login-register-lock.css" rel="stylesheet">
    <link href="<?= base_url(); ?>/assets/node_modules/sweetalert2/dist/sweetalert2.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?= base_url(); ?>/dist/css/style.min.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><![endif]-->

    <style type="text/css">
        .isDisabled {
            cursor: not-allowed;
        }
    </style>
</head>

<body class="skin-default card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">TRAMITES COBIENE</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <section id="wrapper">
        <div class="login-register">
            <div class="login-box card">
                <div class="card-body">
                    <div class="form-horizontal form-material" id="loginform">
                        <img src="assets\images\cob.png" alt="" class="rounded mx-auto d-block" width="35%">
                        <br>
                        <h3 class="text-center m-b-20">Inicie Sesión COBIENE</h3>
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <div class="form-floating mb-3">
                                    <input class="form-control input_numb" type="text" required="" placeholder="Ingrese CIP" name="cip" value="" id="cip_user" maxlength="9" minlength="9">
                                    <label for="tb-fname">Ingrese CIP</label>
                                    <div id="response"></div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-floating mb-3">
                                    <input class="form-control" type="text" required="" placeholder="Contraseña CIP" name="cip" id="pass_user">
                                    <label for="tb-fname">Ingrese Contraseña</label>
                                    <div id="response"></div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <input type="submit" id="init_log" class="btn w-100 btn-lg btn-info btn-rounded text-white" disabled value="Iniciar">
                            </div>
                            <div class="form-group m-b-0">
                                <div class="col-sm-12 text-center">
                                    ¿No tienes una cuenta? <a href="<?= base_url('registrate') ?>" title="Registrate" class="text-info m-l-5">
                                        <b>Registrate</b></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
    <script src="<?= base_url(); ?>/assets/node_modules/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<?= base_url(); ?>/assets/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!--Custom JavaScript -->
    <script src="<?= base_url(); ?>/assets/node_modules/toast-master/js/jquery.toast.js"></script>
    <script src="<?= base_url(); ?>/assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>
    <script src="<?= base_url(); ?>dist/js/utilities.js"></script>


    <script type="text/javascript">
        $(function() {
            $(".preloader").fadeOut();
        });
        $(function() {
            $('[data-bs-toggle="tooltip"]').tooltip()
        });
        // ============================================================== 
        // Login and Recover Password 
        // ============================================================== 

        $.toast({
            heading: '<h3>Información</h3>',
            text: '<h6>Si aún no ha agregado una contraseña, Puede hacerlo iniciando sesion</h6>',
            position: 'top-right',
            loaderBg: '#ff6849',
            icon: 'info',
            hideAfter: false,
            stack: false,
        });
        $('#nxt-aut').on("click", function() {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });

        $("#cip_user").on("keyup", function() {
            var cip = $("#cip_user").val();
            var lengthCip = $("#cip_user").val().length;
            var dataCip = 'cip=' + cip;
            if (lengthCip >= 0) {
                $.ajax({
                    url: 'site/existsCip',
                    type: "GET",
                    data: dataCip,
                    dataType: "JSON",
                    success: function(data) {
                        if (data.status == 3) {
                            $("#response").html('<p style="color:red;"><strong>CUENTA SUSPENDIDA<strong></p>');
                            $.toast({
                                heading: '<h4>CUENTA SUSPENDIDA</h4>',
                                text: 'Su cuenta ha sido suspendida, si esto es un error puede comunicarse al <a href="https://wa.link/gvxg0q" target="_blank">929 054 672</a>',
                                position: 'top-center',
                                loaderBg: '#ff6849',
                                icon: 'error',
                                hideAfter: false,
                                stack: false,
                            });

                        } else if (data.success == 1) {
                            $("#response").html(data.message);
                            $("#init_log").attr('disabled', false);
                            $("#number-lbl").html("+51 " + data.phone);
                            $("#number").val("+51" + data.phone);
                            $("#phoneUser").val(data.phone);
                        } else {
                            $("#response").html(data.message);
                            $("#init_log").attr('disabled', true);
                            $.toast().reset('all');

                        }
                    },
                    error: function(data) {
                        console.log(data['responseText']);
                    }
                });
            }
        });

        $("#init_log").on("click", (e) => {
            e.preventDefault();
            let cip = $("#cip_user").val(),
                pass = $("#pass_user").val();

            if (pass == "") {
                successMsg(
                    "Falta el campo Contraseña",
                    "Error! ingrese su contraseña",
                    "#ff6849",
                    "error"
                );
            }
            
            $.ajax({
                method: "post",
                url: "site/verifyPass",
                data: {
                    id: cip,
                    pass: pass
                },
                dataType: "json",
            }).done((d) => {
                if (d.password === pass) {
                    location.href = base_url + "site/login/" + d.phone_user;
                } else {
                    successMsg(
                        "Contraseña Erronea",
                        "Escribe correctamente tu contraseña",
                        "#ff6849",
                        "error"
                    );
                }
            })
        })
    </script>




</body>

</html>