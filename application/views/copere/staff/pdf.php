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

$pdf->Cell(40);

$pdf->Cell(100, 5, utf8_decode('PERFIL DEL PERSONAL'), '', 0, 'C', false);
$pdf->Ln();
$pdf->Ln();
$pdf->SetFont('Arial', 'BU', 12);

$pdf->Ln();

$pdf->Cell(201, 5, utf8_decode('DATOS PERSONALES'), '', 1, '', false);

$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(20, 7, 'GRADO', 'LRTB', 0, 'C', true);

$pdf->Cell(70, 7, 'APELLIDOS Y NOMBRES', 'LRTB', 0, 'C', true);

$pdf->Cell(39, 7, 'CIP', 'LRTB', 0, 'C', true);

$pdf->Cell(54, 7, 'DNI', 'LRTB', 1, 'C', true);
$pdf->SetFont('Arial', '', 11);

$pdf->Cell(20, 8, $row->name_grade_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(70, 8,  strtoupper($row->lastname_staff . " " . $row->name_staff), 'LRTB', 0, 'C', false);

$pdf->Cell(39, 8, $row->cip_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(54, 8, $row->dni_staff, 'LRTB', 1, 'C', false);

$pdf->Ln();

$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(70, 7, 'LUGAR NACIMIENTO', 'LRTB', 0, 'C', true);

$pdf->Cell(50, 7, 'FECHA NACIMIENTO', 'LRTB', 0, 'C', true);

$pdf->Cell(63, 7, 'DIRECCION DOMICILIARIA', 'LRTB', 1, 'C', true);

$pdf->SetFont('Arial', '', 11);

$pdf->Cell(70, 8, $row->place_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(50, 8, $row->birthday_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(63, 8, utf8_decode(strtoupper($row->address)), 'LRTB', 1, 'C', false);

$pdf->Ln();


$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);

$pdf->Cell(54, 7, 'CELULAR', 'LRTB', 0, 'C', true);

$pdf->Cell(55, 7, 'CELULAR EMERGENCIA', 'LRTB', 0, 'C', true);

$pdf->Cell(54, 7, 'ESTADO CIVIL', 'LRTB', 0, 'C', true);
$pdf->Cell(20, 7, utf8_decode('N° HIJOS'), 'LRTB', 1, 'C', true);

$pdf->SetFont('Arial', '', 11);


$pdf->Cell(54, 8, $row->cell_holder, 'LRTB', 0, 'C', false);

$pdf->Cell(55, 8, $row->emergency_cell, 'LRTB', 0, 'C', false);

$pdf->Cell(54, 8,  strtoupper($row->status_staff), 'LRTB', 0, 'C', false);
$pdf->Cell(20, 8, $row->sons_staff, 'LRTB', 1, 'C', false);


$pdf->SetFont('Arial', 'BU', 12);

$pdf->Ln();
$pdf->Ln();
$pdf->Cell(201, 5, utf8_decode('DATOS DE SERVICIO'), '', 1, '', false);

$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(30, 7, 'CONDICION', 'LRTB', 0, 'C', true);

$pdf->Cell(55, 7, 'FECHA CONTRATADO', 'LRTB', 0, 'C', true);

$pdf->Cell(44, 7, 'FECHA NOMBRADO', 'LRTB', 0, 'C', true);

$pdf->Cell(54, 7, 'FECHA ULTIMO ASCENSO', 'LRTB', 1, 'C', true);
$pdf->SetFont('Arial', '', 11);

$pdf->Cell(30, 8,  strtoupper($row->condition_staff), 'LRTB', 0, 'C', false);

$pdf->Cell(55, 8, $row->hired_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(44, 8, $row->named_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(54, 8, $row->ascent_staff, 'LRTB', 1, 'C', false);
$pdf->Ln();


$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(30, 7, 'GRADO', 'LRTB', 0, 'C', true);

$pdf->Cell(50, 7, 'UNIDAD ORIGEN', 'LRTB', 0, 'C', true);

$pdf->Cell(49, 7, 'GRUPO OCUPACIONAL', 'LRTB', 0, 'C', true);

$pdf->Cell(54, 7, 'ESPECIALIDAD', 'LRTB', 1, 'C', true);
$pdf->SetFont('Arial', '', 11);

$pdf->Cell(30, 8, $row->name_grade_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(50, 8, $row->name_rol, 'LRTB', 0, 'C', false);

$pdf->Cell(49, 8, $row->ocupation_staff, 'LRTB', 0, 'C', false);

$pdf->Cell(54, 8, $row->name_specialty, 'LRTB', 1, 'C', false);
$pdf->Ln();

$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(60, 7, 'PUESTO', 'LRTB', 0, 'C', true);

$pdf->Cell(55, 7, 'TIEMPO DE SERVICIO', 'LRTB', 1, 'C', true);
$hired_init = new DateTime($row->hired_staff);
$actually = new DateTime(date("Y-m-d"));
$days = $hired_init->diff($actually);

$pdf->SetFont('Arial', '', 11);

$pdf->Cell(60, 8,  strtoupper($row->position_staff), 'LRTB', 0, 'C', false);

$pdf->Cell(55, 8, $days->days, 'LRTB', 1, 'C', false);

$pdf->SetFont('Arial', 'BU', 12);

$pdf->Ln();
$pdf->Ln();
$pdf->Cell(201, 5, utf8_decode('TRES ULTIMOS LUGARES DE TRABAJO'), '', 1, '', false);

$pdf->SetDrawColor(0, 0, 0);
$pdf->SetLineWidth(0.3);
$pdf->SetTextColor(0);

$pdf->SetFillColor(0, 0, 0);

$pdf->SetFont('Arial', 'B', 11);

$pdf->SetFillColor(169, 189, 207);
$pdf->Cell(95, 7, 'LUGAR DONDE TRABAJO', 'LRTB', 0, 'C', true);

$pdf->Cell(44, 7, 'FECHA DE INICIO', 'LRTB', 0, 'C', true);

$pdf->Cell(44, 7, 'FECHA DE FIN', 'LRTB', 1, 'C', true);

$pdf->SetFont('Arial', '', 11);


foreach ($jobs as $key => $job) :

$pdf->Cell(95, 8, utf8_decode(strtoupper($job->name_jobb)), 'LRTB', 0, 'C', false);

$pdf->Cell(44, 8, $job->start_jobb, 'LRTB', 0, 'C', false);

$pdf->Cell(44, 8, $job->finalized_jobb, 'LRTB', 1, 'C', false);

endforeach;

$pdf->Ln();


$pdf->Output();
