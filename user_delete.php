<?php
include('db_connection.php');

$success_message = '';
$error_message = '';

$user_id = $_GET['id'];

$sql = "DELETE FROM MyGuests WHERE id=".$user_id;
	if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}
?>