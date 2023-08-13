<?php



require('assets/fpdf/fpdf.php');


class PDF extends FPDF
{
    function Footer()
    {
        // Go to 1.5 cm from bottom
        $this->SetY(-15);
        // Select Arial italic 8
        $this->SetFont('Arial', 'I', 8);
        // Print centered page number
        $this->Cell(0, 10, utf8_decode('Página ') . $this->PageNo() . '-{nb}', 0, 0, 'C');
    }
}

$pdf =  new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 14);
$fill = false;


$text_qr = base_url().'Reporte-Vacacion/'.$row->id;
$ruta_qr = "assets/images/qr/vacacion_".$row->id.".png";
if (!file_exists($ruta_qr)) {

    qr($ruta_qr, $text_qr, $row->id);
  

//QRcode::png($text_qr, $ruta_qr,QR_ECLEVEL_L, 3, 0);
}

$pdf->Image($ruta_qr, 70, 120, 30);



$pdf->Cell(40);

$pdf->Cell(100, 5, utf8_decode('EJÉRCITO DEL PERÚ'), '', 1, 'C', false);
$pdf->Cell(100, 5, utf8_decode('GU : COBIENE'), '', 0, '', false);
$pdf->Cell(80, 5, utf8_decode('UU : EGC'), '', 0, 'R', false);
$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('Arial', 'BU', 12);

$pdf->Ln();

$pdf->Cell(201, 5, utf8_decode('PAPELETA DE PERMISO'), '', 1, 'C', false);
$pdf->Ln();
$dias_vacaciones = $row->weekend + $row->days_computed;
$pdf->SetFont('Arial', '', 12);
$pdf->Multicell(185, 4, utf8_decode('   Este Comando de Bienestar del Ejército, autoriza al '.utf8_decode(strtoupper($row->name_range)).' '.utf8_decode(strtoupper($row->name_user)).' '.utf8_decode(strtoupper($row->lastname_user)).', para hecer uso de '. $dias_vacaciones .' días  de permiso para '. utf8_decode(strtoupper($row->reason)) .' .'), '', 'J', false);
    
$pdf->Ln();

$pdf->Cell(201, 5, utf8_decode('EMPIEZA      :    '.fecha($row->start__vacation).''), '', 1, 'J', false);

$pdf->Cell(201, 5, utf8_decode('TERMINA      :    '.fecha($row->end_vacation).''), '', 1, 'J', false);


//$pdf->Cell(201, 5, utf8_decode('DIRECCIÓN  :    '.fecha($row->end_vacation).''), '', 1, 'J', false);


$pdf->Cell(201, 5, utf8_decode('TELÉFONO   :    '.$row->phone_user.''), '', 1, 'J', false);


$pdf->SetFont('Arial', '', 11);


$pdf->Ln();
$pdf->Cell(185, 5, ' Lima, ' . fecha(date(DATE_W3C)), '', 1, 'R', false);
$pdf->Ln();










$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Ln();
$pdf->Cell(185, 5, ' ......................................................','', 1, 'R', false);
$pdf->Ln();


/*

foreach ($jobs as $key => $job) :
$pdf->Cell(95, 8, utf8_decode(strtoupper($job->name_jobb)), 'LRTB', 0, 'C', false);
$pdf->Cell(44, 8, $job->start_jobb, 'LRTB', 0, 'C', false);
$pdf->Cell(44, 8, $job->finalized_jobb, 'LRTB', 1, 'C', false);
endforeach;

*/
$pdf->Ln();


$pdf->Output();
