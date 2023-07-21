function eliminar(url)
{

    
    if(confirm('Realmente desea eliminar este registro?'))
    {
        //window.location=url;
         var Url = url;

   var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";
   
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
            $("#resultado2").html(result);
        }
    });
    }
}
function eliminar3(url)
{
    if(confirm('Realmente desea eliminar este registro?'))
    {
        //window.location=url;
         var Url = url;
   var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";
   
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
            $("#carro").html(result);
        }
    });
    }
}
function editar(url)
{
var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";
     //window.location=url;
         var Url = url;   
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
            $("#resultado2").html(result);
        }
    });
}
function editar2(url,res,codigo)
{
     //window.location=url;

     var params;
         var Url = url+""+codigo; 
         //alert(Url);
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
          
            $(res).html(result);
        }
    });
}

function editar4(url)
{
     //window.location=url;

     var params;
         var Url = url; 
         //alert(Url);
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {

            $('#detalles').html(result);
        }
    });
}



function editar3(url,div,modal)
{
  
   //alert(99999);
  //setTimeout("$('#suggestions').hide();", 200);
  var params = "op_paginacion=1";
 
         var Url = url; 
         var Div = div;

    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
          

            $(div).html(result);
            $(modal).modal("show");
           
        }
    });
}

function eliminar2(url)
{
    if(confirm('eliminar 2'))
    {
        window.location=url;
         var Url = url;
   var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";
   
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        data: params,
        success: function (result) {
            $("#resultado2").html(result);
        }
    });
    }
}
function myFunction(url,div)
 {  
 //alert('lkjsd'); 
   //  $("#vm_agregar_articulo").modal("show");
    // $("#vm_agregar_articulo").modal("hide");
   var screen = $('#loading-screen'); 
   configureLoadingScreen(screen);
  var Url = url;
  var Div = div;
  //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";  
    $.ajax({
        url: Url,
        method: "GET",
        cache: false,
        //data: params,
            beforeSend: function(){
        },
                success: function (result) {         
         //  $("#exampleModal").modal("show");
         $(Div).html(result);
          // $("#vm_agregar_articulo").modal("hide");
        },
         complete: function (result) {         
         //  $("#exampleModal").modal("show");
        stop(screen);
          // $("#vm_agregar_articulo").modal("hide");
        }
    });       
} 
function myFunction2(url,div)
{  
    //alert('lkjsd'); 
    //  $("#vm_agregar_articulo").modal("show");
    // $("#vm_agregar_articulo").modal("hide");
    var screen = $('#loading-screen'); 
    configureLoadingScreen(screen);
    var Url = url;
    var Div = div;
    //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";  
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
        data: ({
                fecha: $('#reservationtime').val(),               
            }),
         beforeSend: function(){
        },
         success: function (result) {         
         //  $("#exampleModal").modal("show");
         $(Div).html(result);
          // $("#vm_agregar_articulo").modal("hide");
        },
         complete: function (result) {         
         //  $("#exampleModal").modal("show");
        stop(screen);
          // $("#vm_agregar_articulo").modal("hide");
        }
    });       
} 
function addUser(url)
{
   //alert(url);
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre_de_usuario: $('#nombre_de_usuario').val(),
               
               
                correo: $('#correo').val(),
              
                password: $('#password').val(),
               
                rol: $('#rol').val(),
                tipo_usuario: $('#tipo_usuario').val(),
            }),
        success: function (result) {

            $("#resultado2").html(result);

        }
    });   
} 
function addVenta(url)
{
    var Url = url; 
 
   var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                cedula: $('#cedula').val(),
               
                
                total: $('#total').val(),
                totalD: $('#totalD').val(),

                
                tipo_pago: $('#tipo_pago').val(),

                punto2: $('#punto2').val(),
                biopago2: $('#biopago2').val(),
                efectivo2: $('#efectivo2').val(),
                divisa2: $('#divisa2').val(),
                 transacion2: $('#transacion2').val(),


            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });   
} 



function addCompra(url)
{
    var Url = url; 
 
   var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                cedula: $('#cedula').val(),
                factura: $('#factura').val(),
               
                
                total: $('#total').val(),
                totalD: $('#totalD').val(),

                
                tipo_pago: $('#tipo_pago').val(),

                punto2: $('#punto2').val(),
                biopago2: $('#biopago2').val(),
                efectivo2: $('#efectivo2').val(),
                divisa2: $('#divisa2').val(),
               // tipo_pago: $('#tipo_pago').val(),

            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });   
} 
function addClientes(url,div)
{

  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre_cliente: $('#nombre_cliente2').val(),     
                apellido_cliente: $('#apellido_cliente2').val(),
                cedula: $('#cedula2').val(),              
                correo: $('#correo2').val(),
                password: $('#password2').val(),               
                telefono: $('#telefono2').val(),
                direccion: $('#direccion2').val(),
                fecha_nacimiento: $('#fecha_nacimiento2').val(),
            }),
           beforeSend: function(){
            $('#modal-xl').modal('hide');
        },
        success: function (result) {
         
            $(div).html(result);          
           
        }  

    });
}


function imprimir(url,id2)
{

  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                id: id2,     
              
            }),
           beforeSend: function(){
            $('#modal-xl').modal('hide');
        },
        success: function (result) {
        // alert(id2);
           // $(div).html(result);          
           
        }  

    });
}


function addDescripcion(url,div)
{

  var Url = url; 
  //alert(11111);
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                descripcion: $('#descripcion').val(),     
                id: $('#id').val(),
               
            }),
           beforeSend: function(){
            $('#MODAL2').modal('hide');
        },
        success: function (result) {
         
            $(div).html(result);          
           
        }  

    });
}
function addProveedores(url,div)
{
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                razonSocial: $('#razonSocial').val(),     
                apellido_cliente: $('#apellido_cliente2').val(),
                rif: $('#rif').val(),              
                telefono1: $('#telefono1').val(),
                telefono2: $('#telefono2').val(),               
                correo: $('#correo').val(),
                direccion: $('#direccion').val(),              
            }),
           beforeSend: function(){
            $('#modal-xl').modal('hide');
        },
        success: function (result) {
          
            $(div).html(result);          
           
        }  

    });
}
function editProveedor(url,div)
{
  
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                id: $('#id').val(), 
                razonSocial: $('#razonSocial').val(),     
                apellido_cliente: $('#apellido_cliente2').val(),
                rif: $('#rif').val(),              
                telefono1: $('#telefono1').val(),
                telefono2: $('#telefono2').val(),               
                correo: $('#correo').val(),
                direccion: $('#direccion').val(),              
            }),
           beforeSend: function(){
            $('#modal-xl').modal('hide');
        },
        success: function (result) {
          
            $("#resultado2").html(result);          
           
        }  

    });
}
function editUser(url)
 {
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre: $('#nombre_de_usuario').val(),
                apellido: $('#apellido').val(),
                id_categoria_evento: $('#id_categoria_evento').val(),
                correo: $('#correo').val(),
                password2: $('#password2').val(),
                password: $('#password').val(),
                telefono: $('#telefono').val(),
                rol: $('#rol').val(),
                 id: $('#id').val(),
            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
}
function editProducto(url)
 {
 var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                id: $('#id').val(),
               nombre: $('#nombre').val(),
                codigo: $('#codigo').val(),
                precio: $('#precio').val(),
                 iva: $('#iva').val(),
                stock: $('#stock').val(),
                stockMinimo: $('#stockMinimo').val(),
                precioCompraBs: $('#precioCompraBs').val(),
                precioCompra: $('#precioCompra').val(),  
				precioD: $('#precioD').val(),
                utilidad: $('#utilidad').val(),
                 descripcion: $('#descripcion').val(),
            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
}




function editTipos(url)
 {
  //alert(url);
 var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                id: $('#id').val(),
          nombre_tipo: $('#nombre_tipo').val(),
                Abreviaruta: $('#Abreviaruta').val(),
            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
}


function addProductos(url)
 { 
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre: $('#nombre').val(),
                codigo: $('#codigo').val(),
                precio: $('#precio').val(),
                iva: $('#iva').val(),
                stock: $('#stock').val(),
                stockMinimo: $('#stockMinimo').val(),
                precioCompraBs: $('#precioCompraBs').val(),
				 precioD: $('#precioD').val(),
                descripcion: $('#descripcion').val(),
                
                precioCompra: $('#precioCompra').val(),
                utilidad: $('#utilidad').val(),
            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
}  





function addTipos(url)
 { 
  //alert(url);
  var Url = url; 
   //var params = "op_paginacion=op_listar_redes&p_pagina_actual=1&consulta=";   
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre_tipo: $('#nombre_tipo').val(),
                Abreviaruta: $('#Abreviaruta').val(),
               
            }),
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
}  


function editCliente(url)
 { 
  var Url = url; 
    $.ajax({
        url: Url,
        method: "POST",
        cache: false,
       dataType: "html",
            data: ({
                nombre_cliente: $('#nombre_cliente').val(),     
                apellido_cliente: $('#apellido_cliente').val(),
                cedula: $('#cedula').val(),              
                correo: $('#correo').val(),
                password: $('#password').val(),               
                telefono: $('#telefono').val(),
                direccion: $('#direccion').val(),
                fecha_nacimiento: $('#fecha_nacimiento').val(),
            }),           
        beforeSend: function(){
            $('#modal-xl').modal('hide');
        },
        success: function (result) {
            $("#resultado2").html(result);
        }
    });    
} 
function configureLoadingScreen(screen){
    $(document)
        .ajaxStart(function () {
            screen.fadeIn();
        });        
}
function stop(screen){
// alert('alert');
    $(document)
        .ajaxStop(function () {
            screen.fadeOut(1000);
        });
}  