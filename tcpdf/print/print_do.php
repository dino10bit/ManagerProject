<?php
//============================================================+
// File name   : example_003.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 003 for TCPDF class
//               Custom Header and Footer
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: Custom Header and Footer
 * @author Nicola Asuni
 * @since 2008-03-04
 */

// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');


// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

	//Page header
	public function Header() {
		// Logo
		$image_file = K_PATH_IMAGES.'logo-dhs.png';
		$this->Image($image_file, 5, 5, 30, '', 'PNG', '', 'T', false, 400, '', false, false, 0, false, false, false);
		// Set font
		$this->SetY(5);
		$this->SetX(134);
		$this->SetFont('times','', 10);
		// Title
		//$this->Cell(0, 0, 'PT. Damai Harapan Sentosa', 0, false, 'C', 0, '', 0, false, 'S', 'S');
		$this->Multicell(0,2,"PT. Damai Harapan Sentosa \nJalan Pecenongan No. 3 BCD\nKelurahan Kebon Pala Kecamatan Gambir\nJakarta Pusat 10120\n+6221 34834657\n+6221 34834658\nsales@bsmart-solutions.com");
		//$this->Line(5, 38, 205, 38);
	}

	// Page footer
	public function Footer() {
		// Position at 15 mm from bottom
		$this->SetY(-15);
		// Set font
		$this->SetFont('helvetica', 'I', 8);
		// Page number
		$this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	}
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Fitrah Hidayat');
$pdf->SetTitle('Print DO');
$pdf->SetSubject('Print DO');
$pdf->SetKeywords('TCPDF, PDF, bsmart, do, print');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// add a page
$pdf->AddPage();

// set font
$pdf->SetFont('times', 'B', 13);
// set some text to print
$txt = <<<EOD
DELIVERY ORDER
EOD;

// print a block of text using Write()
$pdf->Line(5, 38, 205, 38);
$pdf->Line(5, 39, 205, 39);
$pdf->SetY(40);
$pdf->Setx(5);
$pdf->Write(0, $txt,true, false, false, false, '');

$pdf->SetX(5);
$id = $_GET['id'];

$sql = "select users.v_login,do.created_at 
		from tbl_master_do do 
		left join users on do.i_user_id = users.i_user_id
		where i_do_id='$id'
		";
$result = mysql_query($sql) or die(mysql_error());

$sql2 = "select * from tbl_detail_do where i_do_id='$id'";
$result2 = mysql_query($sql2) or die(mysql_error());
$nume=mysql_num_rows($result2);

$pdf->SetFont('times','', 10);
$pdf->SetY(50);
$pdf->Setx(5);

$pdf->Multicell(0,2,"Customer \nAddress \n\nTel No \nFax No. \nAttn");

$pdf->SetY(50);
$pdf->Setx(20);
$pdf->Multicell(0,2," : \n : \n\n : \n :\n :\n");

$pdf->SetY(50);
$pdf->Setx(132);
$pdf->Multicell(0,2," DO No \n Po No \n Date\n");

$pdf->SetY(50);
$pdf->SetX(148);
$pdf->Multicell(0,2," : DHSAND001 - ".$_GET['id']." \n : \n : \n\n\n\n\n");

$table = '<table border="1">
			<thead>
				<tr bgcolor="lightgray">
					<th> Item</th>
					<th> Particulars</th>
					<th> Set</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td> 1</td>
					<td> 
						<strong>DDS Andorid V1</strong> 
						';
if ($nume < 20) {
	$data = '';
	while($row = mysql_fetch_array($result2))
	{
		$data .= $row['2']." <br> ";
	}
	$table .= "<br> ".$data;
}
$table .='
					</td>
					<td> '.$nume.'</td>
				</tr>
			</tbody>
		</table>';
$pdf->SetX(5);
$pdf->writeHTML($table, true, false, false, false, '');

// ---------------------------------------------------------

$pdf->SetFont('times','I', 8);
$pdf->SetY(190);
$pdf->SetX(5);

$pdf->Multicell(0,2,"Received the above mentioned goods/services in\ngood order and condition\n");

$pdf->SetFont('times','', 8);
$pdf->SetX(138);
$pdf->Cell(0, 15, 'PT DAMAI HARAPAN SENTOSA', 0, false, 'C', 0, '', 0, false, 'M', 'M');

$pdf->Ln();
$pdf->SetY(235);
$pdf->SetX(4);
$pdf->Cell(0,0,'Customers Signature & Company Stamp');
$pdf->Line(5, 235, 50, 235);

$pdf->SetY(233);
$pdf->SetX(142);
$pdf->Line(145, 235, 190, 235);
$pdf->Cell(0, 15, 'Arief Rachman', 0, false, 'C', 0, '', 0, false, 'M', 'M');


$pdf->Ln();
$pdf->SetX(5);
$pdf->SetFont('times','I', 8);
$pdf->Multicell(0,2,"* Please sign the duplicate 	and return\n* All item supplied under this DO remain the property of BSMART Technology Sdn Bhd until paid is full\n");

if ($nume>=20) {
	// add a page
	$pdf->AddPage();
	$pdf->Ln();
	$pdf->Ln();
	$count = 10;
	$pdf->SetX(5);
	$table = '<table border="1">
				<thead>
					<tr bgcolor="lightgray">
						<th> No. </th>
						<th> Serial Number </th>
						<th> Set</th>
					</tr>
				</thead>
				<tbody>';
	$data = '';
	$i = 1;
	while($row = mysql_fetch_array($result2))
	{
		$data .= "<tr>
						<td> $i</td>
						<td> $row[2] </td>
						<td> 1 </td>
					</tr>";
		$i++;
	}
	$table .= $data;				
	$table .=	'</tbody>
			</table>';

	$pdf->writeHTML($table, true, false, false, false, '');
}

//Close and output PDF document
$pdf->Output('do-ddsand_'.date('Y-m-d H:i').'.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
