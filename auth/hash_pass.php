<?php

    $pass = $_POST['pass'];

    $pass = password_hash($pass, PASSWORD_DEFAULT);

    echo $pass;

?>
