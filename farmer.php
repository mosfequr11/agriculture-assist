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

if(!empty($_GET['delete_id'])){
	$delete_id = $_GET['delete_id'];
	$sql = "DELETE FROM farmer_problems WHERE id=".$delete_id;
	if ($conn->query($sql) === TRUE) {
		$success_message = "Problem deleted successfully";
	} else {
		$error_message = "Error deleting record: " . $conn->error;
	}
}
?>
<div class="container">  
<div class="row justify-content-md-center">
<div class="col col-lg-12">  
<h3>Problem List</h3>
<div class="pull-right"><a href="add_problem.php">Add New Problem</a></div>
<br>
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
        <th>SL</th>
        <th>Problem</th>
        <th class="text-center">Photo</th>
        <th>Added</th>
        <th class="text-center">Answer Count</th>
        <th class="text-center">Actions</th>
      </tr>
    </thead>
    <tbody>
	<?php 
	$sql = "SELECT * FROM farmer_problems where farmer_id = ".$_SESSION['id']." order by id asc";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {
    // output data of each row
	    $i = 1;
		while($row = $result->fetch_assoc()) {
		   //total answer count
		   $farmer_problem_id = $row["id"];
			$answer_count_sql = "SELECT count(id) as total FROM farmer_problem_answer where farmer_problem_id = ".$farmer_problem_id;
			$answer_count_result = $conn->query($answer_count_sql);
			$answer_count_row = $answer_count_result->fetch_assoc();?>
		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $row["problem_details"]; ?></td>
			<td class="text-center">
			<?php 
			  if(!empty($row["problem_picture"])){
				echo '<img src="uploads/'.$row["problem_picture"].'" width="100" />';
			  } ?>
			
			</td>
			<td><?php echo $row["added"]; ?></td>
			<td class="text-center"><a href="problem_details.php?id=<?php echo $farmer_problem_id; ?>"><?php echo $answer_count_row["total"]; ?></a></td>
			<td  class="text-center">
			<a href="edit_problem.php?id=<?php echo $row["id"]; ?>">Edit</a> | <a href="farmer.php?delete_id=<?php echo $row["id"]; ?>">Delete</a>
			</td>
		  </tr>
		<?php $i++;
		}
	}else{?>
		<tr><td colspan="6" class="text-center">No data found</td></tr>	
	<?php } ?>
    </tbody>
  </table>
  </div></div>
</div>
</body>
</html>
