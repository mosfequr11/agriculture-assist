<?php
include('header.php');
include('db_connection.php');

//check user already login on system
if (empty($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}elseif (!empty($_SESSION['user_type']) && $_SESSION['user_type'] != 'farmer') {
    header('Location: index.php');
    exit();
}

$success_message = '';
$error_message = '';

if(!empty($_POST)){
	
	$problem_details = $_POST['problem_details'];
	$photo_name = '';
	$farmer_id = $_SESSION['id'];
	
	if(!empty($_FILES["problem_picture"]["name"])){
		$target_dir = "uploads/";	
		$photo_name = time().'_'.basename($_FILES["problem_picture"]["name"]);	
		$target_file = $target_dir . $photo_name;	
		if (move_uploaded_file($_FILES["problem_picture"]["tmp_name"], $target_file)) {
				
		} else {
			$error_message = "Sorry, there was an error uploading your file.";
		}
	}

		
	if($error_message == ''){
		$sql = "INSERT INTO farmer_problems (farmer_id, problem_picture, problem_details)
		VALUES ($farmer_id, '$photo_name', '$problem_details')";

		if ($conn->query($sql) === TRUE) {
			$success_message = "Problem added successfully";
		} else {
			$error_message = $conn->error;
		}
	}
	
}
?>
  
<div class="container">  
<div class="row justify-content-md-center">

<h3>Add New Problem</h3>
<div class="pull-right"><a href="farmer.php">Manage Problem</a></div>
<br>
<div class="col col-lg-6">  
	<?php 
		if(!empty($success_message)){
			echo '<div class="alert alert-success" role="alert">'.$success_message.'</div>';
		}
	   if(!empty($error_message)){
			echo '<div class="alert alert-danger" role="alert">ERROR: '.$error_message.'</div>';
		}		
	?>
  <form method="post" action="" enctype="multipart/form-data">
	  <div class="form-group">
		<label>Problem Details</label>
		<textarea name="problem_details" class="form-control" required></textarea>
	  </div>
	  <div class="form-group">
		<label>Problem Photo</label>
		<input type="file" name="problem_picture" class="form-control">
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
  </form></div></div>
</div>

</body>
</html>
