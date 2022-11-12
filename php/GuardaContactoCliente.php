<?php 
include("conexion.php");

if  (isset($_POST['register']))
{
    if (strlen($_POST['name']) >= 1 && strlen($_POST['ced']) >= 1)
    {
        $nombre = trim($_POST['name']);
        $correo = trim($_POST['email']);
        $telefono = trim($_POST['phone']);
        $depto = trim($_POST['depto']);
        $munic = trim($_POST['munic']);
        $cedula = trim($_POST['ced']);
        $fecha = date("dd/mm/yy");
        $categ = trim($_POST['categoria']);
        $pago = trim($_POST['pago']);
        $dir = trim($_POST['message']);
        $pedido = trim($_POST['pedido']);

        $sql = "INSERT INTO `tbl_cliente`(`id_cliente`, `nombre`, `correo`, `telefono`, `direccion`, `departamento`, `municipio`, `cedula`, `fecha`, `Pedido`, `categoria`, `forma_pago`)
        VALUES (null,'$nombre','$correo','$telefono','$dir','$depto','$munic','$cedula','$fecha','$pedido', '$categ','$pago')";

        if(mysqli_query($conexion, $sql))
        {
            ?>
                <div>¡La información proporcionada se ha procesado con éxito!</div>
            <?php
        }
        else  
        {
            ?>
                <div>¡Ups ha ocurrido un pequeño incoveniente!</div>
            <?php
        }
        /*mysqli_close($conexion);*/
    }
    else    
    {
        ?>
            <div>¡Deberías Completar todos los campos correctamente!</div>
        <?php
    }
}
?>


