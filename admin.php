<?php
include('header.php');
include('db_connection.php');

$success_message = '';
$error_message = '';
if (empty($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}elseif (!empty($_SESSION['user_type']) && $_SESSION['user_type'] != 'Admin') {
    header('Location: index.php');
    exit();
}


if(!empty($_GET['delete_user_id'])){
	$user_id = $_GET['delete_user_id'];
	$sql = "DELETE FROM registration WHERE id=".$user_id;
	if ($conn->query($sql) === TRUE) {
		$success_message = "Registration deleted successfully";
	} else {
		$error_message = "Error deleting record: " . $conn->error;
	}
}
?>


  
<div class="container">  
<div class="row justify-content-md-center">
<div class="col col-lg-12">  
<h4><a href="admin.php">User List</a> | <a href="admin-problem.php">Problem List</a></h4><br/>
<h3>User List</h3><br/>
	<?php 
		if(!empty($success_message)){
			echo '<div class="alert alert-success" role="alert">'.$success_message.'</div>';
		}
	   if(!empty($error_message)){
			echo '<div class="alert alert-danger" role="alert">ERROR: '.$error_message.'</div>';
		}		
	?>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Username</th>
        <th>User Type</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
	<?php 
	$sql = "SELECT * FROM registration order by id asc";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {
    // output data of each row
		while($row = $result->fetch_assoc()) {?>
		<tr>
			<td><?php echo $row["id"]; ?></td>
			<td><?php echo $row["name"]; ?></td>
			<td><?php echo $row["contact"]; ?></td>
			<td><?php echo $row["address"]; ?></td>
			<td><?php echo $row["username"]; ?></td>
			<td><?php echo $row["user_type"]; ?></td>
			<td>
			<a href="user_edit.php?id=<?php echo $row["id"]; ?>">Edit</a> | <a href="admin.php?delete_user_id=<?php echo $row["id"]; ?>">Delete</a>
			</td>
		  </tr>
		<?php
		}
	}
	?>
    </tbody>
  </table>
  </div></div>
</div>

</body>
</html>
