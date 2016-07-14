<?php
//============================================================+
// File name   : example_027.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 027 for TCPDF class
//               1D Barcodes
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
 * @abstract TCPDF - Example: 1D Barcodes.
 * @author Nicola Asuni
 * @since 2008-03-04
 */

// Include the main TCPDF library (search for installation path).
require_once('tcpdf_include.php');

$custom_layout = array(130, 150);

//$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, $custom_layout, true, 'UTF-8', false);

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Nicola Asuni');
$pdf->SetTitle('TCPDF Example 027');
$pdf->SetSubject('TCPDF Tutorial');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default header data
//$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 027', PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
//$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetMargins(5, 3, 5);
$pdf->SetHeaderMargin(2);
//$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

$pdf->SetPrintHeader(false);
$pdf->SetPrintFooter(false);

// set auto page breaks
//$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set a barcode on the page footer
$pdf->setBarcode(date('Y-m-d H:i:s'));

$pdf->SetFont('helvetica', '', 10);

// define barcode style
$style = array(
	'position' => '',
	'align' => 'C',
	'stretch' => false,
	'fitwidth' => true,
	'cellfitalign' => '',
	'border' => true,
	'hpadding' => 'auto',
	'vpadding' => 'auto',
	'fgcolor' => array(0,0,0),
	'bgcolor' => false, //array(255,255,255),
	'text' => true,
	'font' => 'helvetica',
	'fontsize' => 7,
	'stretchtext' => 4
);

// set font
$pdf->SetFont('helvetica', '', 11);


// add a page
$resolution= array(145, 150);
$pdf->AddPage('L', $resolution);

// PRINT VARIOUS 1D BARCODES

$pdf->SetXY(8,2);
$pdf->write1DBarcode('DDSAND01-00030', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,2);
$pdf->write1DBarcode('DDSAND01-00029', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,17.5);
$pdf->write1DBarcode('DDSAND01-00028', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,17.5);
$pdf->write1DBarcode('DDSAND01-00027', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,33);
$pdf->write1DBarcode('DDSAND01-00026', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,33);
$pdf->write1DBarcode('DDSAND01-00025', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,48.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,48.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,64);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,64);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,79.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,79.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,95);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,95);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,110.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,110.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');


$resolution= array(145, 150);
$pdf->AddPage('L', $resolution);

$pdf->SetXY(8,2);
$pdf->write1DBarcode('DDSAND01-00030', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,2);
$pdf->write1DBarcode('DDSAND01-00029', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,17.5);
$pdf->write1DBarcode('DDSAND01-00028', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,17.5);
$pdf->write1DBarcode('DDSAND01-00027', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,33);
$pdf->write1DBarcode('DDSAND01-00026', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,33);
$pdf->write1DBarcode('DDSAND01-00025', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,48.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,48.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,64);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,64);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,79.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,79.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,95);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,95);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(8,110.5);
$pdf->write1DBarcode('DDSAND01-00024', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

$pdf->SetXY(90,110.5);
$pdf->write1DBarcode('DDSAND01-00023', 'C128', '', '', '', 11.5, 0.20, $style, 'N');

//Close and output PDF document
$pdf->Output('example_027.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
