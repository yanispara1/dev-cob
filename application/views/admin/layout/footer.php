<div class="right-sidebar">
    <div class="slimscrollright">
        <div class="rpanel-title"> Panel de colores <span><i class="ti-close right-side-toggle"></i></span>
        </div>
        <div class="r-panel-body">
            <ul id="themecolors" class="m-t-20">
                <li><b>Sidebar Color Light</b></li>
                <li><a href="javascript:void(0)" data-skin="skin-default" class="default-theme">1</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-green" class="green-theme">2</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-red" class="red-theme">3</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-blue" class="blue-theme">4</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-purple" class="purple-theme">5</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-megna" class="megna-theme">6</a></li>
                <li class="d-block m-t-30"><b>Sidebar Color Black</b></li>
                <li><a href="javascript:void(0)" data-skin="skin-default-dark" class="default-dark-theme working">7</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-green-dark" class="green-dark-theme">8</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-red-dark" class="red-dark-theme">9</a>
                </li>
                <li><a href="javascript:void(0)" data-skin="skin-blue-dark" class="blue-dark-theme">10</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-purple-dark" class="purple-dark-theme">11</a></li>
                <li><a href="javascript:void(0)" data-skin="skin-megna-dark" class="megna-dark-theme ">12</a></li>
            </ul>
        </div>
    </div>
</div>

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->

<div id="idle-timeout-dialog" data-backdrop="static" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Su sesión expirará pronto</h4>
            </div>
            <div class="modal-body">
                <p>
                    <i class="fa fa-warning font-red"></i> Su sesión será bloqueada en
                    <span id="idle-timeout-counter"></span> seconds.
                </p>
                <p>¿Quieres continuar con tu sesión?</p>
            </div>
            <div class="modal-footer text-center">
                <button id="idle-timeout-dialog-keepalive" type="button" class="btn btn-success text-white" data-bs-dismiss="modal">Si, Seguir Trabajando</button>
            </div>
        </div>
    </div>
</div>

<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->

<!-- ============================================================== -->
<!-- footer -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- End footer -->
<!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->

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
<script src="<?= base_url(); ?>assets/node_modules/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="<?= base_url(); ?>assets/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="<?= base_url(); ?>dist/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="<?= base_url(); ?>dist/js/waves.js"></script>
<!--Menu sidebar -->
<script src="<?= base_url(); ?>dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="<?= base_url(); ?>dist/js/custom.min.js"></script>
<!-- ============================================================== -->
<!-- This page plugins -->
<script src="<?= base_url(); ?>assets/node_modules/select2/dist/js/select2.full.min.js" type="text/javascript"></script>

<!-- ============================================================== -->
<!--morris JavaScript -->

<script src="<?= base_url(); ?>assets/node_modules/raphael/raphael-min.js"></script>
<script src="<?= base_url(); ?>assets/node_modules/morrisjs/morris.min.js"></script>
<script src="<?= base_url(); ?>assets/node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
<!-- Popup message jquery -->
<script src="<?= base_url(); ?>assets/node_modules/sticky-kit-master/dist/sticky-kit.min.js"></script>
<script src="<?= base_url(); ?>assets/node_modules/toast-master/js/jquery.toast.js"></script>


<script src="<?= base_url(); ?>assets/node_modules/dff/dff.js" type="text/javascript"></script>

<!-- Session-timeout -->
<script src="<?= base_url(); ?>assets/node_modules/session-timeout/idle/jquery.idletimeout.js"></script>
<script src="<?= base_url(); ?>assets/node_modules/session-timeout/idle/jquery.idletimer.js"></script>
<script src="<?= base_url(); ?>assets/node_modules/sweetalert2/dist/sweetalert2.all.min.js"></script>

<script src="<?= base_url(); ?>dist/js/utilities.js"></script>

<!--This page plugins -->
<?php
for ($i = 0; $i < count($scripts); $i++) {
    echo $scripts[$i];
}
?>

<script type="text/javascript">
    //Delete
    $('.deletebtn').on('click', function() {

        $tr = $(this).closest('tr');
        var datosEliminar = $tr.children('td').map(function() {
            return $(this).text();
        });
        $('#delete_id').val(datosEliminar[0]);

        $('#title').html("Eliminar consulta de universidad");
        $('#dscpt').html("¿Deseas Eliminar la Consulta?");

    });

    $('.deletebtn2').on('click', function() {

        $tr = $(this).closest('tr');
        var datosEliminar = $tr.children('td').map(function() {
            return $(this).text();
        });
        $('#delete_id2').val(datosEliminar[0]);
        $('#title2').html("Eliminar consulta de Instituto");
        $('#dscpt2').html("¿Deseas Eliminar la Consulta?");

    });

    $('.deletebtn3').on('click', function() {

        $tr = $(this).closest('tr');
        var datosEliminar = $tr.children('td').map(function() {
            return $(this).text();
        });
        $('#delete_id3').val(datosEliminar[0]);

        $('#title3').html("Eliminar consulta de Britanico");
        $('#dscpt3').html("¿Deseas Eliminar la Consulta?");

    });
</script>





</body>

</html>