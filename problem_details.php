<?php
include('header.php');
include('db_connection.php');

//check user already login on system
if (empty($_SESSION['id'])) {
    //header('Location: login.php');
    //exit();
}
$problem_id = $_GET['id'];

$sql = "SELECT * FROM farmer_problems where id = ".$problem_id;
	$result = $conn->query($sql);
	$row = $result->fetch_assoc();

	
	$success_message = '';
$error_message = '';

if(!empty($_POST) && !empty($_SESSION['id'])){
	
	$answer = $_POST['answer'];
	$user_id = $_SESSION['id'];

	$sql = "INSERT INTO farmer_problem_answer (farmer_problem_id, user_id, answer)
	VALUES ($problem_id, $user_id, '$answer')";

	if ($conn->query($sql) === TRUE) {
		$success_message = "Your answer save successfully";
	} else {
		$error_message = $conn->error;
	}	
}
	
?>
<div class="container">  
<div class="row justify-content-md-center">
<div class="col col-lg-12">  
<h3>Problem Details</h3>
<br>
	<?php 
		if(!empty($success_message)){
			echo '<div class="alert alert-success" role="alert">'.$success_message.'</div>';
		}
	   if(!empty($error_message)){
			echo '<div class="alert alert-danger" role="alert">ERROR: '.$error_message.'</div>';
		}		
		
		if(!empty($row["problem_picture"])){
				echo '<img src="uploads/'.$row["problem_picture"].'" width="100%" height="250" /><br/><br/>';
			}
	?>
 	
	 <p><?php echo $row["problem_details"]; ?></p>
  </div></div>
  
  <div class="row" style="margin-top:40px;">  
		<div class="col-md-12">
		<h4>Answers</h4>
		<?php 
			$sql = "SELECT * FROM farmer_problem_answer where farmer_problem_id = ".$problem_id." order by id asc";
			$result = $conn->query($sql);
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
				$user_id = $row['user_id'];
				$user_sql = "SELECT name FROM registration where id = ".$user_id;
				$user_result = $conn->query($user_sql);
				$user_row = $user_result->fetch_assoc();?>
					<div class="well well-sm">
						<div class="row" id="post-review-box">
							<div class="col-md-12">
								<p><?php echo $row["answer"]; ?></p>
								<b>Answer By: </b> <?php echo $user_row['name']; ?> &nbsp;&nbsp;&nbsp;&nbsp;<b>Date: </b> <?php echo $row["added"]; ?>
							</div>
						</div>
					</div>
			<?php }}else{ ?>
				<div class="well well-sm">
						<div class="row" id="post-review-box">
							<div class="col-md-12">
								<p>Answer list empty</p>
							</div>
						</div>
					</div>
			<?php } ?> 
         
		</div>
	</div>
  
  <?php if (!empty($_SESSION['id']) && !empty($_SESSION['user_type']) && $_SESSION['user_type'] == 'Professor') { ?>
  <div class="row" style="margin-top:10px;">  
		<div class="col-md-12">
		<h4>Your Answer</h4>
    	<div class="well well-sm">     
        
            <div class="row" id="post-review-box">
                <div class="col-md-12">
                    <form accept-charset="UTF-8" action="" method="post">
                        <textarea class="form-control" cols="50" id="new-review" name="answer" placeholder="Enter your answer here..." rows="5" required></textarea><br/>
        
                        <div class="pull-right">
                            <button class="btn btn-success" type="submit">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
         
		</div>
	</div><?php } ?>
</div>
</body>
</html>
