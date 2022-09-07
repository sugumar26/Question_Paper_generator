<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            table{
                /* border-collapse:collapse; */
                height:40%;
                width: 70%;
                text-align: center;
            }
            table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>

<body>
<table>
    <tr >
            <th>ID</th>
            <th>Question</th>
            <th>difficulty</th>
            <th>Unit</th>
            <th>marks</th>
            </tr> <br>
<?php
$connection=mysqli_connect("localhost","root","");
$db=mysqli_select_db($connection,'test');

if(isset($_POST['show'])){
    $code=$_POST['code'];
    $query="select * from question where code='$code' ";
    $query_run=mysqli_query($connection,$query);

    ?>
<?php
    while($row=mysqli_fetch_array($query_run)){
        ?>
        
         <tr >
            
            <td><?php echo $row['id'];?></td>
            <td><?php echo $row['question'];?></td>
            <td><?php echo $row['difficulty'];?></td>
            <td><?php echo $row['unit'];?></td>
            <td><?php echo $row['marks'];?></td>            
    </tr><br>
    <?php
    }
}
?>
</table>
</body>
</html>