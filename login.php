<?php
include('header.php');
include('db_connection.php');

$success_message = '';
$error_message = '';

if (!empty($_POST)) {

  $username = $_POST['username'];
  // $password = md5($_POST['password']);
  $password = $_POST['password'];

  $sql       = "select * from `registration` where username = '" . $username . "' AND password = '" . $password . "'";
  $result    = $conn->query($sql);

  if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $_SESSION['name'] = $row['name'];
    $_SESSION['username'] = $row['username'];
    $_SESSION['user_type'] = $row['user_type'];
    $_SESSION['id']       = $row['id'];

    if ($_SESSION['username']) {
      $_SESSION['success'] = "You Have Successfully Login.....";
      header("location:farmer.php");
      exit;
    }
  } else {
    $error_message = "Please enter valid username and password";
  }
}
?>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Login</h1>
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
          <label>Username</label>
          <input type="text" name="username" class="form-control" placeholder="Enter username" required>
        </div>
        <div class="form-group">
          <label>Password</label>
          <input type="password" name="password" class="form-control" placeholder="Password" required>
        </div>

        <button type="submit" class="btn btn-primary">Login</button>
      </form>
    </div>
  </div>
</div>

</body>

</html>