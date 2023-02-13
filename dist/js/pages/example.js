$(function () {

	// For select 2
	$(".select2").select2();

     $("#m").val(['CO', 'AR', 'IA', 'KS', 'KY', 'MO', 'OK', 'TX', 'CT', 'MD', 'MA', 'PA']);
     $("#m").change();


    $("#d").on("click", () =>{
       let val =$("#m").val();
       console.log(val);
    });

});
