<?php
	$question=$_POST['question'];
    $difficulty=$_POST['difficulty'];
    $marks=$_POST['marks'];
    $unit=$_POST['unit'];
    $subject=$_POST['subject'];
    $semester=$_POST['semester'];
    $year=$_POST['year'];
    $code=$_POST['code'];

	// Database connection
	$conn = new mysqli('localhost','root','','test');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into question(question,difficulty,marks,unit,subject,semester,year,code) values(?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssisssss",$question,$difficulty,$marks,$unit,$subject,$semester,$year,$code);
		$execval = $stmt->execute();
		echo $execval;
		echo "Question inserted successfully...";
		$stmt->close();
		$conn->close();
	}
?>