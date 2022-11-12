<?php 
include("conexion.php");

$nombre = $_POST["name"];
$correo=$_POST["email"];
$telefono=$_POST["phone"];
$depto=$_POST["depto"];
$munic=$_POST["munic"];
$cedula=$_POST["ced"];
$fecha=$_POST["date"];
$categ =$_POST["categoria"];
$pago=$_POST["pago"];
$dir=$_POST["message"];

$sql = "INSERT INTO tbl_cliente values(null, '$nombre', '$correo', '$telefono', '$dir',  '$depto', '$munic', '$cedula', '$fecha', '$categ', '$pago')";

if(mysqli_query($conexion, $sql))
{
    echo "Se ha Procesado la Solicitud";
}
else  
{
    echo "Error: " . $sql . "<br>" . mysqli_error($conexion);
}

mysqli_close($conexion);
?> 