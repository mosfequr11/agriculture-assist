<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Agricultural Assistant</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.php">Agricultural Assist</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.php">Home</a></li>
        <li class="active"><a href="admin.php">Admin</a></li>
		<li class="active"><a href="professor.php">Professor</a></li>
		<li><a href="farmer.php">Farmer</a></li>
		<li><a href="registration.php">Registration</a></li>
		
        <li><a href="about-us.php">About Us</a></li>
      </ul>
	  <?php if (!empty($_SESSION['id'])) {?>
      <ul class="nav navbar-nav navbar-right">
        <li style="color:#fff;margin-top:15px">Welcome <?php echo $_SESSION['name'] ?></li>
        <li>|</li>
        <li><a href="logout.php"> Logout</a></li>
      </ul>
	  <?php }else{ ?>
	  <ul class="nav navbar-nav navbar-right">
        <li><a href="login.php">Login</a></li>
      </ul>
      <?php }?>
    </div>
  </div>
</nav>