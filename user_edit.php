<?php
include('header.php');
include('db_connection.php');

$success_message = '';
$error_message = '';

$user_id = $_GET['id'];

$sql = "SELECT * FROM registration where id = " . $user_id;
$result = $conn->query($sql);
$row = $result->fetch_assoc();

if (!empty($_POST)) {

	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	$username = $_POST['username'];
	// $password = md5($_POST['password']);
	$password = $_POST['password'];
	$user_type = $_POST['user_type'];

	$sql = "UPDATE registration SET name='$name', contact='$phone',address='$address' WHERE id=" . $user_id;

	if ($conn->query($sql) === TRUE) {
		$success_message = "Registration updated successfully";
	} else {
		$error_message = $conn->error;
	}
}
?>

<div class="jumbotron">
	<div class="container text-center">
		<h1>Registration Update</h1>
	</div>
</div>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col col-lg-6">
			<?php
			if (!empty($success_message)) {
				echo '<div class="alert alert-success" role="alert">' . $success_message . '</div>';
			}
			if (!empty($error_message)) {
				echo '<div class="alert alert-danger" role="alert">ERROR: ' . $error_message . '</div>';
			}
			?>
			<form method="post" action="">
				<div class="form-group">
					<label>Name</label>
					<input type="text" name="name" value="<?php echo $row['name']; ?>" class="form-control" placeholder="Enter name" required>
				</div>
				<div class="form-group">
					<label>Phone</label>
					<input type="text" name="phone" value="<?php echo $row['contact']; ?>" class="form-control" placeholder="Enter contact phone" required>
				</div>
				<div class="form-group">
					<label>Address</label>
					<input type="text" name="address" value="<?php echo $row['address']; ?>" class="form-control" placeholder="Enter address">
				</div>
				<div class="form-group">
					<label>Username</label>
					<input type="text" name="username" value="<?php echo $row['username']; ?>" readonly class="form-control" placeholder="Enter username">
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" name="password" class="form-control" placeholder="Password">
				</div>
				<div class="form-group">
					<label>User Type</label>
					<select class="form-control" name="user_type" required>
						<option value="Admin">Admin</option>
						<option value="Professor">Professor</option>
					</select>
				</div>

				<button type="submit" class="btn btn-primary">Update</button>
			</form>
		</div>
	</div>
</div>

</body>

</html>