<?php
include('header.php');
include('db_connection.php');

//check user already login on system
if (empty($_SESSION['id'])) {
    header('Location: login.php');
    exit();
}elseif (!empty($_SESSION['user_type']) && $_SESSION['user_type'] != 'Professor') {
    header('Location: index.php');
    exit();
}
?>
<div class="container">  
<div class="row justify-content-md-center">
<div class="col col-lg-12">  
<h3>Answered Problem List</h3>
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
        <th>Answer</th>
        <th class="text-center">Total Answer</th>
      </tr>
    </thead>
    <tbody>
	<?php 
	$sql = "SELECT * FROM farmer_problem_answer where user_id = ".$_SESSION['id']." order by id desc";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {
	    $i = 1;
		while($row = $result->fetch_assoc()) {		
			$farmer_problem_id = $row['farmer_problem_id'];
			$problem_sql = "SELECT * FROM farmer_problems where id = ".$farmer_problem_id;
			$problem_result = $conn->query($problem_sql);
			$problem_row = $problem_result->fetch_assoc();
			
			//total answer count
			$answer_count_sql = "SELECT count(id) as total FROM farmer_problem_answer where farmer_problem_id = ".$farmer_problem_id;
			$answer_count_result = $conn->query($answer_count_sql);
			$answer_count_row = $answer_count_result->fetch_assoc();
			?>
		<tr>
			<td><?php echo $i; ?></td>
			<td><a href="problem_details.php?id=<?php echo $farmer_problem_id; ?>"><?php echo $problem_row["problem_details"]; ?></a></td>
			<td class="text-center">
			<?php 
			  if(!empty($problem_row["problem_picture"])){
				echo '<img src="uploads/'.$problem_row["problem_picture"].'" width="100" />';
			  } ?>
			
			</td>
			<td><?php echo $row["answer"]; ?></td>
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
