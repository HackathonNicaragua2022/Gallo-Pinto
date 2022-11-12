<?php   
//Declaración de variables para conexión a la DB
$servidor ="localhost";
$usuario ="root";
$contrania = "";
$BD = "bd_mhaje";

//Creando la Conexión
$conexion = mysqli_connect($servidor, $usuario, $contrania, $BD);

if  (!$conexion)
    {
        echo "Falló la Conexión <br>";
        die("Connection Failed: " . mysqli_connect_error());
    }
else    
    {
        echo "Conexión Exitosa";
    }
?>