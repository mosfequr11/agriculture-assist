<?php
include('header.php');
include('db_connection.php');

//check user already login on system
$_SESSION['name'] = '';
$_SESSION['username'] = '';
$_SESSION['id']       = '';
$_SESSION['id']       = '';
header('Location: index.php');