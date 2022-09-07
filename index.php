<html>
<head>
    <title> Automatic Question paper Generator </title>
    <link rel="stylesheet" type="text/css" href="login.css">   
</head>
    <body>
    <form method="post" action="login.php">
    <div class="login-box">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
            <?php if(isset($_GET['error'])){?>
            <p class="error"><?php echo $_GET['error']; ?> </p>
            <?php} ?>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">

            <input type="button" class="button" name="submit" value="Login"/>
            <a href="#">Change Password</a>    
            
        </div>
        <!-- <script>
            function myfunction(){
                window.location.href="logind.html";
            }
        </script> -->
        </form>
        </body>
</html>        
    