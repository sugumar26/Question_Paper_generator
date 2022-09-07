<?php

$connection=mysqli_connect("localhost","root","");
$db=mysqli_select_db($connection,'test');

if(isset($_POST['delete'])){
    $id=$_POST['id'];
    $query="delete from question where id='$id'";
    $query_run=mysqli_query($connection,$query);

    if($query_run){
        echo '<script type="text/javascript"> alert("Data Delete")</script>';
    }
    else{
        echo '<script type="text/javascript"> alert("Data not Delete")</script>';
    }
}


?>