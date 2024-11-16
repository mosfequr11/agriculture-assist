<?php
include('header.php');
include('db_connection.php');

$success_message = '';
$error_message = '';

if(!empty($_POST)){
	
	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	$username = $_POST['username'];
	// $password = md5($_POST['password']);
	$password = $_POST['password'];
	$user_type = $_POST['user_type'];

	$sql = "INSERT INTO registration (name, contact, address, username, password, user_type)
	VALUES ('$name', '$phone', '$address', '$username', '$password', '$user_type')";

	if ($conn->query($sql) === TRUE) {
		$success_message = "New registration successfully";
	} else {
		$error_message = $conn->error;
	}	
}
?>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Registration</h1>
  </div>
</div>
  
<div class="container">  
<div class="row justify-content-md-center">
<div class="col col-lg-6">  
	<?php 
		if(!empty($success_message)){
			echo '<div class="alert alert-success" role="alert">'.$success_message.'</div>';
		}
	   if(!empty($error_message)){
			echo '<div class="alert alert-danger" role="alert">ERROR: '.$error_message.'</div>';
		}		
	?>
  <form method="post" action="">
	  <div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control" placeholder="Enter name" required>
	  </div>
	  <div class="form-group">
		<label>Phone</label>
		<input type="text" name="phone" class="form-control" placeholder="Enter contact phone" required>
	  </div>
	  <div class="form-group">
		<label>Address</label>
		<input type="text" name="address" class="form-control" placeholder="Enter address">
	  </div>
	  <div class="form-group">
		<label>Username</label>
		<input type="text" name="username" class="form-control" placeholder="Enter username" required>
	  </div>
	  <div class="form-group">
		<label>Password</label>
		<input type="password" name="password" class="form-control"  placeholder="Password" required>
	  </div>
	  <div class="form-group">
		<label>User Type</label>
		<select class="form-control" name="user_type" required>
			<option value="Admin">Admin</option>
			<option value="Professor">Professor</option>
			<option value="farmer">Farmer</>
		</select>
	  </div>
   	  
	  <button type="submit" class="btn btn-primary">Submit</button>
  </form></div></div>
</div>

</body>
</html>
