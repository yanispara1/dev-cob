	<body>

		<div id="preloader">
			<div data-loader="circle-side"></div>
		</div><!-- /Preload -->


		<div class="container-fluid">
			<div class="row row-height">
				<div class="col-xl-4 col-lg-4 content-left">
					<div class="content-left-wrapper">
						<!--<a href="index.html" id="logo"><img src="<?php echo base_url(); ?>files/img/logo.png" alt="" width="45" height="45"></a>
	                <div id="social">
	                    <ul>
	                        <li><a href="#0"><i class="icon-facebook"></i></a></li>
	                        <li><a href="#0"><i class="icon-twitter"></i></a></li>
	                        <li><a href="#0"><i class="icon-google"></i></a></li>
	                        <li><a href="#0"><i class="icon-linkedin"></i></a></li>
	                    </ul>
	                </div>
	                 /social -->
						<div>
							<figure><img src="<?php echo base_url(); ?>files/img/logo-k.png" alt="" class="img-fluid" width="270" height="270"></figure>
							<h2><i>KOREKENKE</i></h2>
							<p>la presente aplicación es la sistematización de los procesos de atención de pre solicitudes para una respuesta eficiente y eficaz.</p>
							<!-- <a href="../item/potenza-job-application-form-wizard/26079630.html" class="btn_1 rounded yellow" target="_parent">Purchase this template</a>-->
							<a href="#start" class="btn_1 rounded mobile_btn yellow">Comenzar Ahora!</a>
						</div>
						<div class="copy">© 2021 ServitecPeru</div>
					</div>
					<!-- /content-left-wrapper -->
				</div>
				<!-- /content-left -->
				<div class="col-xl-8 col-lg-8 content-right" id="start">
					<div id="wizard_container">
						<center>
							<figure><img src="<?php echo base_url(); ?>files/img/cob.png" alt="" class="img-fluid" width="120" height="120"></figure>
						</center>
						<div id="top-wizard">
							<span id="location"></span>
							<div id="progressbar"></div>
						</div>
						<!-- /top-wizard -->
						<form id="wrapped" method="post" enctype="multipart/form-data" action="<?php echo base_url(); ?>enviar-consulta" onSubmit='disableFunction()'>
							<input id="website" name="website" type="text" value="">
							<!-- Leave for security protection, read docs for details -->
							<div id="middle-wizard">


								<div class="step">
									<h2 class="section_title">Descripción del Problema</h2>
									<h3 class="main_question">Datos del dispositivo</h3>
									<div class="form-group">
										<label for="personal_website">Equipo a reparar</label>
										<input type="text" name="equipo" id="personal_website" class="form-control required" autofocus>
									</div>
									<div class="form-group add_top_30">
										<label for="short_bio">Problema que presenta</label>
										<textarea name="problema" id="short_bio" class="form-control required" style="height: 150px"></textarea>
									</div>
								</div>
								<!-- /step-->

								<div class="step">
									<h2 class="section_title">Información Personal</h2>

									<div class="form-group add_top_30">
										<label for="name">usuario del equipo : Grado Apellido Nombre</label>
										<input type="text" name="name" id="name" class="form-control required" onchange="getVals(this, 'name_field');">
									</div>
									<div class="form-group">
										<label for="fixed_rate_contract">Departamento , sección o Unidad
										</label>
										<input type="text" name="dpto" id="fixed_rate_contract" class="form-control required">
									</div>
									<div class="form-group">
										<label for="phone">Número Celular</label>
										<input type="text" name="phone" id="phone" class="form-control required">
									</div>
								</div>
								<!-- /step-->

								<div class="submit step" id="end">
									<div class="summary">
										<div class="wrapper">
											<h3>Gracias por tu tiempo<br><span id="name_field"></span>!</h3>
											<p>Te contactaremos a la brevedad a la siguiente dirección de correo electrónico <strong id="email_field"></strong></p>
										</div>

									</div>
								</div>
								<!-- /step last-->

							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard">
								<button type="button" name="backward" class="backward">Anterior</button>
								<button type="button" name="forward" class="forward">Siguiente</button>
								<button type="submit" name="process" id="btn_submit" class="submit">Enviar</button>
							</div>
							<!-- /bottom-wizard -->
							<!-- /bottom-wizard -->
						</form>
					</div>
					<!-- /Wizard container -->
				</div>
				<!-- /content-right-->
			</div>
			<!-- /row-->
		</div>
		<!-- /container-fluid -->

		<div class="cd-overlay-nav">
			<span></span>
		</div>
		<!-- /cd-overlay-nav -->

		<div class="cd-overlay-content">
			<span></span>
		</div>
		<!-- /cd-overlay-content -->