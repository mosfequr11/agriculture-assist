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
<h3>Problem List</h3><br/>
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
      </tr>
    </thead>
    <tbody>
	<?php 
	$sql = "SELECT * FROM farmer_problems where 1 order by id desc";
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
			
		  </tr>
		<?php $i++;
		}
	}else{?>
		<tr><td colspan="5" class="text-center">No data found</td></tr>	
	<?php } ?>
    </tbody>
  </table>
  </div></div>
</div>

</body>
</html>
