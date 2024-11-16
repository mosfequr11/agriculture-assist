<?php
include('header.php');
include('db_connection.php');
?>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Farmer Problems</h1>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center"> 
  <div class="container row">
	<?php 
	$sql = "SELECT * FROM farmer_problems where 1 order by id asc";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$photo = 'https://placehold.it/150x80?text=NO PHOTO';
			if(!empty($row["problem_picture"])){
				$photo = 'uploads/'.$row["problem_picture"];
			}
		?>
		<div class="col-sm-3">
		  <div class="card" style="">
			<img class="card-img-top" src="<?php echo $photo; ?>" alt="Card image" style="width:100%">
			<div class="card-body">
			  <p class="card-text"><?php echo $row["problem_details"]; ?></p>
			  <a href="problem_details.php?id=<?php echo $row["id"]; ?>" class="btn btn-primary">Read More</a>
			</div>
		  </div>
		</div>
		<?php }} ?>
  </div>
  
</div>

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  border-radius: 5px; /* 5px rounded corners */
  padding:10px;
  margin-bottom: 25px;
  height:300px;
}

.card img{
	height:180px;
}

.card p{
	max-height:60px;
	overflow: hidden;
	padding:5px 0;
}

/* Add rounded corners to the top left and the top right corner of the image */
img {
  border-radius: 5px 5px 0 0;
}
</style>

</body>
</html>
