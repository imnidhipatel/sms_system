<?php 
// DB credentials.
$username="root";
$password="";
// Establish database connection.
$dsn="mysql:host=localhost; dbname=armentum";
try
{
    //$con=mysqli_connect("localhost","root","","armentum");
$dbh = new PDO($dsn,$username,$password);
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>
