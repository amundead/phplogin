<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */

$hostname = parse_url(getenv('MYSQL_HOST'));
$user = parse_url(getenv('MYSQL_USER'));
$password = parse_url(getenv('MYSQL_PASSWORD'));
$database = parse_url(getenv('MYSQL_DATABASE'));


/* Attempt to connect to MySQL database */
$link = mysqli_connect($hostname, $user, $password, $database);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>