<?php

    $servername = 'localhost';
    $user = 'root';
    $pass = 'password';
    $db = 'e_commerce';

    $conn = mysqli_connect($servername, $user, $pass, $db);

    if(!$conn)
    {
        die('Connection Not Established!');
    }

?>
