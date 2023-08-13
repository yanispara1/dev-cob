<div class="card-body" id = "resultado2">

<?php
        foreach ($vacations as $key => $vacation) 
        {
        ?>
        <div class="row" >
            
            <input name="id_vacation[]" id="id_vacation[]" type="hidden"   value="<?= $vacation->id ?>" >
        
                <div class="col-md-3">
                    <div class="form-group"> 
                        <label class="form-label">Fecha de Inicio</label>
                        <input name="start_vacation[]" id="start_vacatio[]" type="date" class="form-control" placeholder="" value="<?= $vacation->start__vacation ?>" > 
                    </div>
                </div>    
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="form-label"> Cantidad de Dias</label>
                        <input name="quantity_day[]" id="quantity_day[]" type="number" class="form-control" placeholder="" value="<?= $vacation->quantity_day ?>" >
                    </div>
                </div>    
                <div class="col-md-3">    
                    <div class="form-group">
                        <label class="form-label"> MOTIVO</label>
                        <input name="reason[]" id="reason[]" type="text" class="form-control" placeholder="" value="<?= $vacation->reason ?>" > 
                    </div>
                </div>    
                <div class="col-md-3">
                    <div class="form-group">
                        <label class="form-label"> Destino</label>
                        <input name="destination[]" id="destination[]" type="text" class="form-control" placeholder="" value="<?= $vacation->destination ?>" >
                    </div>
                </div> 
                <div class="col-md-5">
                    <div class="form-group">
                        <input type="file" id="photo_support[]" name="photo_support[]">
                        <label for="file-2" id="file-2-preview">Agrear soporte</label>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="form-group">
                        <label class="form-label">Eliminar</label>
                        <br>
                        <button class="btn btn-warning" type="button" onclick="eliminar('<?= base_url('be/vacations/delete/'.$vacation->id.''); ?>');"> 
                                <i class="fa fa-minus"></i> 
                        </button>  </div>
                </div>
            
                </div>
    <?php } ?>
	<br>
	<div id="education_fields"></div>
</div>