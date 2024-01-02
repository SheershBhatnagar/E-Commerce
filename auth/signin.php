<?php

    require_once('../conn.php');

    $email = $_POST['email'];
    $pass = $_POST['pass'];

    $sql = "select * from login where email = '$email'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) 
    {
        $row = mysqli_fetch_assoc($result);
        $email = $row["email"];
        $passSql = $row["password"];

        $passVerify = password_verify($pass, $passSql);

        if($passVerify)
        {
            echo json_encode(
                array(
                    "status"=> "success",
                    "message"=> "Login Success",
                )
            );
        }
        else
        {
            echo json_encode(
                array(
                    "status"=> "failed",
                    "message"=> "Wrong Password!",
                )
            );
        }
    }
    else
    {
        echo json_encode(
            array(
                "status"=> "failed",
                "message"=> "User doesn't exists!",
            )
        );
    }

?>
