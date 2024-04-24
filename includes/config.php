<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','saikrishna');
define('DB_PASS','Sainani@0464');
define('DB_NAME','jobportal');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS);
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>