<?php
//construir la estructura dinámica del PDF

// pdf($datos);

require('assets/fpdf/fpdf.php');

$pdf = new FPDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$fill = false;


// Cabecera de página
// Pie de página
// Posición: a 1,5 cm del final

$url = 'assets/images/qr/res' .  $a->id_resolution . '.png';
$url2 = base_url() . 'be/resolucion/' . $a->id_resolution;

if (!file_exists($url)) {

  qr($url, $url2, $a->id_resolution);
}

// Logo
$pdf->Image('assets/images/escudo.jpg', 5, 10, 17);
// Helvetica bold 15
$pdf->SetFont('Helvetica', 'B', 15);
// Movernos a la derecha
$pdf->Cell(1);
$pdf->SetDrawColor(254, 254, 254);
$pdf->SetLineWidth(0.5);
$pdf->SetTextColor(225);
// Título $pdf->Cell(90,4,'______________________','',0,'C',false);
$pdf->Cell(10, 10, '', '', 0, 'C');
$pdf->SetFillColor(250, 0, 0);
$pdf->SetTextColor(255);

$pdf->Cell(19, 15, utf8_decode('PERÚ'), '1', 0, 'C', true);
$pdf->SetFont('Helvetica', 'B', 12);
$pdf->SetFillColor(0);
$pdf->SetTextColor(250);
$pdf->Cell(30, 8, 'Ministerio', 'LR', 0, 'L', true);
$pdf->SetFillColor(80);
$pdf->SetTextColor(250);

$pdf->Cell(40, 9, utf8_decode('Ejército del Perú'), 'LRT', 0, 'C', true);
$pdf->SetFillColor(180);
$pdf->SetTextColor(250);
$pdf->Cell(50, 7, utf8_decode('Comando de '), 'LRT', 1, 'C', true);

$pdf->Cell(30);
$pdf->SetFillColor(0);
$pdf->SetTextColor(250);
$pdf->Cell(30, 5, 'de Defensa', 'RL', 0, 'L', true);

$pdf->SetFillColor(80);
$pdf->SetTextColor(250);
$pdf->Cell(40, 5, '', 'LR', 0, 'L', true);
$pdf->SetFillColor(180);
$pdf->SetTextColor(250);
$pdf->Cell(50, 5, utf8_decode('Bienestar del Ejército'), 'LR', 1, 'C', true);


$pdf->Cell(30);
$pdf->SetFillColor(0);
$pdf->Cell(30, 3, '', 'LRB', 0, 'L', true);
$pdf->SetFillColor(80);
$pdf->Cell(40, 3, '', 'LRB', 0, 'L', true);
$pdf->SetFillColor(180);
$pdf->SetTextColor(0);
$pdf->Cell(50, 3, '', 'LRB', 0, 'C', true);
$pdf->Image('assets/images/logo-bicentenario.png', 160, 10, 38);

// Salto de línea
$pdf->Ln(5);
$pdf->Cell(25, 10, '', '', 0, 'C', $fill);
// $pdf->Image('public/escudo.jpg',5,12,17);

$pdf->Cell(1);
$pdf->SetFont('Helvetica', 'BI', 10);

$pdf->Cell(150, 5, utf8_decode('"Decenio de la igualdad de Oportunidades para Mujeres y Hombres"'), '', 'C', false);
$pdf->Cell(9);

$pdf->Cell(150, 5, utf8_decode('"Año del Bicentenario del Perú: 200 años de Idependencia"'), '', 'C', false);
$pdf->Cell(-10);

$pdf->Cell(134, 5, utf8_decode('"Perú suyunchikpalskayPachakWalan: iskaypachackwalañamqispisganmantnkarum"'), '', 'C', true);

$pdf->Ln();
$pdf->SetFont('Helvetica', '', 11);

$pdf->Cell(180, 5, ' San Borja, ' . fecha($a->date), '', 1, 'R', false);
$pdf->Cell(10, 5, '', '', 0, '', false);

$pdf->Cell(100, 5, utf8_decode('Oficio N° '.str_pad($a->id_resolution, 4, '0', STR_PAD_LEFT) .' S-3/a,2'), '', 1, '', false);
$pdf->Ln(2);

$pdf->SetFont('Helvetica', '', 11);
$pdf->Cell(10, 10, '', '', 0, '', false);
$pdf->Cell(30, 10, utf8_decode('Señor'), '', 0, '', false);
$pdf->SetFont('Helvetica', 'B', 11);

$pdf->Cell(70, 10, utf8_decode('      '. $a->adress_name), '', 1, '', false);

$pdf->SetFont('Helvetica', '', 11);
$pdf->Cell(10, 5, '', '', 0, '', false);
$pdf->Cell(30, 1, '', '', 0, '', false);
$pdf->Cell(140, 1, utf8_decode('      '. $a->range_res), '', 1, '', false);

$pdf->Ln(6);
$pdf->Cell(10, 10, '', '', 0, '', false);
$pdf->Cell(30, 10, 'Asunto', '', 0, '', false);
$pdf->Cell(130, 10, utf8_decode(':     '. $a->issue_res), '', 1, '', false);

$pdf->Ln(3);

$pdf->Cell(10, 10, '', '', 0, '', false);
$pdf->Cell(30, 10, 'Ref.', '', 0, '', false);
$pdf->Cell(130, 10, utf8_decode(':     '. $a->ref_res), '', 1, '', false);

$pdf->Ln(3);

$pdf->SetFillColor(255);
$pdf->SetFont('Helvetica', '', 11.5);
$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Multicell(170, 6, utf8_decode('                            Por especial encargo del Señor General de Brigada Comandante General del Comando de Bienestar del Ejército, es grato dirigirme hacia Ud, para saludarlo cordialmente y solicitarle tenga a bien otorgar la recategorización en la escala de pensiones de acuerdo al Convenio de Bienestar Insterinstitucional, al personal que a continuación se indica:'), '', 'J', false);


$pdf->Ln(3);

$pdf->Cell(10, 10, '', '', 0, '', false);
$pdf->SetFont('Helvetica', 'UB', 12);
$pdf->Cell(55, 10, 'Datos del Alumno (a):', '', 0, '', false);

$pdf->Cell(1, 10, '', '', 1, '', false);


$pdf->SetFont('Helvetica', '', 12);
$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'Apellidos Y Nombres', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': '.$r  = ($b->person == 1) ? $b->lastname_user . ' ' .$b->name_user : $name_fam . ' ' .$last_fam), '', 1, '', false);

$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'Especialidad', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': '.$specialty), '', 1, '', false);

$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'DNI', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': '.$r  = ($b->person == 1) ? $this->encryption->decrypt($b->dni_user): $cift_fam ), '', 1, '', false);

$pdf->Ln(3);

$pdf->Cell(10, 10, '', '', 0, '', false);
$pdf->SetFont('Helvetica', 'UB', 12);
$pdf->Cell(55, 10, 'Datos del Titular:', '', 0, '', false);

$pdf->Cell(1, 10, '', '', 1, '', false);


$pdf->SetFont('Helvetica', '', 12);
$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'Grado', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': '. $b->name_range), '', 1, '', false);

$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'Apellidos y Nombres', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': ' . $b->lastname_user . ' ' .$b->name_user), '', 1, '', false);

$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(45, 5, 'Parentesco', '', 0, '', false);
$pdf->Cell(145, 5, utf8_decode(': '. $r  = ($b->person == 1) ? 'Títular': $b->relationship), '', 1, '', false);

$pdf->Ln(7);

$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Cell(65, 5, 'Se adjunta al presente los requisitos de acuerdo al convenio', '', 1, '', false);

$pdf->Ln(7);

$pdf->SetFillColor(255);
$pdf->SetFont('Helvetica', '', 11.5);
$pdf->Cell(10, 10, '', '', 0, '', false);

$pdf->Multicell(170, 6, utf8_decode('                         Agradeciendo a su gentil atención, es propicia la oportunidad para expresarle los sentimientos de mi especial consideración y deferente estima.'), '', 'J', false);

$pdf->Ln(8);

$pdf->Cell(165, 4, ' Dios guarde a Ud.', '', 1, 'R', false);

$pdf->Ln(5);


// Posición: a 1,5 cm del final
$pdf->SetY(240);
// Helvetica italic 8



$pdf->Ln(12);
$pdf->SetFont('Helvetica', '', 8);

$pdf->Cell(90, 4, '', '', 0, 'C', false);
$pdf->Cell(90, 4, '.......................................................................................', '', 1, 'C', false);

$pdf->SetFont('Helvetica', 'B', 10);

$pdf->Cell(90, 4, '', '', 0, 'C', false);
$pdf->Cell(90, 4, 'O-224531776-O+', '', 1, 'C', false);

$pdf->Cell(90, 4, '', '', 0, 'C', false);
$pdf->Cell(90, 4, 'ALEJANDRO CESAR DELGADO RIVERO', '', 1, 'C', false);

$pdf->Cell(90, 4, '', '', 0, 'C', false);
$pdf->Cell(90, 4, 'Crl EP', '', 1, 'C', false);
$pdf->SetFont('Helvetica', 'B', 9);

$pdf->Cell(90, 4, '', '', 0, 'C', false);
$pdf->Cell(90, 4, 'Jefe del Dpto. de Apoyo Social', '', 1, 'C', false);
$pdf->SetTitle('Informe Isnpeccion');
$pdf->SetFont('Helvetica', 'I', 8);

$pdf->Image($url,  21,262,-90);


// Número de página
// $pdf->Cell(0,5,utf8_decode('Pagína').' '.$pdf->PageNo().' de {nb}',0,0,'C');

$pdf->Output('I', 'Resolución'.$a->id_resolution.'.pdf');
