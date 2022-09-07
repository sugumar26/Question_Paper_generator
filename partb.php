<?php
function qn_already_exists($qn, $final){
    foreach ($final as $qnn) {
        if($qnn == $qn){
            return true;
        }
    }
    return false;
}

$connection=mysqli_connect("localhost","root","Sindhu.1");
$db=mysqli_select_db($connection,'test');

    $final = array();
    $pdf_content = '<h1>PART - B</h1><ul>';


    for ($x = 0; $x < 10; $x++) {
        $possible = array();

        $unit = $_POST['unit'.strval($x)];
        $level= $_POST['level'.strval($x)];
        $mark = $_POST['mark'.strval($x)];
        $sql = "SELECT * FROM question";
        $result = $connection->query($sql);

        echo $unit." ".$level." ".$mark."\n";

        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
              if($row["unit"] == intval($unit) && $row["difficulty"] == $level && $row["marks"] == intval($mark)){
                array_push($possible,$row["question"]);
              }
            }
        } else {
            echo "Something went wrong!";
        }
        $k = 0;
        do{
            $total = count($possible);
            if($total <= 0){
                echo 'Something went wrong';
            }
            $qn = rand(0, $total-1);
            //echo $qn;
            $k++;
        } while(qn_already_exists($possible[$qn], $final) && $k < 100);
        array_push($final,$possible[$qn]);
        $pdf_content .= '<li>'.
            $possible[$qn]
        .'</li>';
        if($x %2 == 0){
            $pdf_content .= '<br/><center>       (or) </center>';
        }else{
            $pdf_content .= '<br/><br/>';
        }
    }
    $pdf_content.='</ul>';
    echo $pdf_content;
    require_once("tcpdf/tcpdf.php");
    $obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    $obj_pdf->setCreator(PDF_CREATOR);
    $obj_pdf->setTitle("PART - B");
    $obj_pdf->setHeaderData('','',PDF_HEADER_TITLE,PDF_HEADER_STRING);
    $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
    $obj_pdf->setFooterData(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
    $obj_pdf->setDefaultMonospacedFont('helvetica');
    $obj_pdf->setFooterMargin(PDF_MARGIN_FOOTER);
    $obj_pdf->setMargins(PDF_MARGIN_LEFT, '5', PDF_MARGIN_RIGHT);
    $obj_pdf->setPrintHeader(false);
    $obj_pdf->setPrintFooter(false);
    $obj_pdf->setAutoPageBreak(TRUE, 10);
    $obj_pdf->setFont('helvetica', '', 12);
    $obj_pdf->AddPage();
    $obj_pdf->writeHTML($pdf_content);
    ob_end_clean();
    $obj_pdf->Output('partB.pdf', "I");
?>