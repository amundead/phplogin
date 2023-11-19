<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

$hostname = (getenv('MYSQL_HOST'));
$user = (getenv('MYSQL_USER'));
$password = (getenv('MYSQL_PASSWORD'));
$database = (getenv('MYSQL_DATABASE'));


/* Attempt to connect to MySQL database */
$link = mysqli_connect($hostname, $user, $password, $database);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>