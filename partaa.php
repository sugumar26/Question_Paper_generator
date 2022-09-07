<?php
function qn_already_exists($qn, $final){
    foreach ($final as $qnn) {
        if($qnn == $qn){
            return true;
        }
    }
    return false;
}

function getTaxonomy($level){
    switch($level){
        case 'Remembering':
            $val = 1;
            break;
        case 'Understanding':
            $val = 2;
            break;
        case 'Analyzing':
            $val = 4;
            break;
        case 'Applying':
            $val = 3;
            break;
        case 'Evaluating':
            $val = 5;
            break;
        case 'Creating':
            $val = 6;
            break;
    }
    return $val;
}

$connection=mysqli_connect("localhost","root","rootnl");
$db=mysqli_select_db($connection,'test');

    $final = array();
    $pdf_content = '<p style="text-align:center;font-family: "Times New Roman", Times, serif;">Government College of Engineering :: Salem<br/>
    <font size="10px">(An Autonomous Institution Affiliated to Anna University, Chennai)</font><br/>
    B.E. Degree Examinations – Jun/July 2022<br/>';

    $semester = $_POST['semester'];

    $pdf_content .= 'Semester ';
    $pdf_content .= $semester;
    $pdf_content .= '<br/>(2018 Regulations)<br/>';
    $pdf_content .= 'COMPUTER SCIENCE AND ENGINEERING<br/>';

    $subject = $_POST['subject'];
    $subj_code = $_POST['subjectcode'];
    $time = $_POST['duration'];
    $marks = $_POST['marks'];

    $pdf_content .= $subj_code." - ".$subject.'</p>';

    $pdf_content .= '<div style="display:flex; flex-flow:row wrap;"><p style="float:left;width:33.33333%;
    text-align:left;">Time: '.$time.' Hours'.'</p><p style="float:right;width:33.33333%;
    text-align:right;">Maximum marks: '.$marks.'</p></div>';

    $qno = 1;
    $pdf_content .= '<p style="text-align:center;">Part A<br/><br/>Answer all questions</p><p style="float:right;width:33.33333%;
    text-align:right;">2 x 10 = 20 Marks</p>';
    $pdf_content .= '
    <table cellspacing="0" cellpadding="2" border="1" style="width:100%;border-color:gray;">
        <tr>
            <th style="width:10%"></th>
            <th style="width:70%"></th>
            <th style="width:10%">BTL</th>
            <th style="width:10%">M</th>
        </tr>
    ';

    for ($x = 0; $x < 10; $x++) {
        $possible = array();

        $unit = $_POST['unit'.strval($x).'a'];
        $level= $_POST['level'.strval($x).'a'];

        $val = 0;

        $val = getTaxonomy($level);

        $sql = "SELECT * FROM question";
        $result = $connection->query($sql);


        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
              if($row["unit"] == intval($unit) && $row["difficulty"] == $level && $row["marks"] == 2 && $row["subject"] == $subject){
                array_push($possible,$row["question"]);
              }
            }
        } else {
            echo "Something went wrong!";
        }
        $k = 0;
        $total = count($possible);
        if($total <= 0){
            echo 'Something went wrong';
        }
        do{
            $qn = rand(0, $total-1);
            //echo $qn;
            $k++;
        } while(qn_already_exists($possible[$qn], $final) && $k < 100);
        array_push($final,$possible[$qn]);
        $pdf_content .= '<tr>
        <td style="text-align:center;">'.$qno.'.'.'</td>
        <td style="text-align:center;">'.$possible[$qn].'</td>
        <td style="text-align:center;">'.$val.'</td>
        <td style="text-align:center;">'."2".'</td>'.'</tr>';
        $qno++;
    }

    $pdf_content.='</table>';
    
    $final = array();
    $pdf_content .= '<p style="text-align:center;font-family: "Times New Roman", Times, serif;">Part B<br/><br/>Answer any one subquestion in a given question</p><p style="float:right;width:33.33333%;
    text-align:right;">5 x 16 = 80 Marks</p>';

    $pdf_content .= '
    <table cellspacing="0" cellpadding="2" border="1" style="width:100%;border-color:gray;">
        <tr>
            <th style="width:10%"></th>
            <th style="width:70%"></th>
            <th style="width:10%">BTL</th>
            <th style="width:10%">M</th>
        </tr>
    ';

    for ($x = 0; $x < 20; $x+=2) {
        $possible = array();

        $mark1 = $_POST['mark'.strval($x).'b'];
        $mark2 = $_POST['mark'.strval($x+1).'b'];

        $level1 = $_POST['level'.strval($x).'b'];
        $level2 = $_POST['level'.strval($x+1).'b'];

        $l1 = getTaxonomy($level1);
        $levelval = strval($l1);
        $mar = intval($mark1) + intval($mark2);
        if($mar != 16){
            echo $mar.'Please enter sum as 16';
            return;
        }

            $cont = 'a) ';

            $unit = $_POST['unit'.strval($x).'b'];
            $level= $_POST['level'.strval($x).'b'];

            $sql = "SELECT * FROM question";
            $result = $connection->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    if($row["unit"] == intval($unit) && $row["difficulty"] == $level && $row["marks"] == intval($mark1)){
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
            $cont .= $possible[$qn].' ('.$mark1.')';
        
        if($mark1 != 16){
            $unit = $_POST['unit'.strval($x+1).'b'];
            $level= $_POST['level'.strval($x+1).'b'];
            $sql = "SELECT * FROM question";
            $result = $connection->query($sql);

            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    if($row["unit"] == intval($unit) && $row["difficulty"] == $level && $row["marks"] == intval($mark2)){
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
            $cont .= '<br/><br/>b) '.$possible[$qn].' ('.$mark2.')';
            $l2 = getTaxonomy($level2);
            $levelval .= ','.$l2;
        }
        if($x%4 == 0){
            $tmp = strval($qno).'i';
        }else{
            $tmp = strval($qno).'ii';
        }
        
        $pdf_content .= '<tr>
        <td style="text-align:center;">'.$tmp.'.</td>
        <td style="text-align:center;">'.$cont.'</td>
        <td style="text-align:center;">'.$levelval.'</td>
        <td style="text-align:center;">16</td>'
        .'</tr>';
        if($x%2 != 0){
            $qno++;
        }
    }
    $pdf_content.='</table>';

    require_once("tcpdf/tcpdf.php");
    $obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
    $obj_pdf->setCreator(PDF_CREATOR);
    $obj_pdf->setTitle("Question paper");
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
    $obj_pdf->Output('qp.pdf', "I");
?>