<?php

    require_once('../conn.php');

    if($_SERVER['REQUEST_METHOD'] === 'POST')
    {
        $json_data = file_get_contents('php://input');
        $data = json_decode($json_data, true);
    
        $fname = $data['fname'];
        $lname = $data['lname'];
        $email = $data['email'];
        // $phone = $_POST['phone'];
        $pass = $data['pass'];

        $userAlreadyExistsSql = "select email from login where email = '$email'";
        $userAlreadyExistsResult = mysqli_query($conn, $userAlreadyExistsSql);

        if(mysqli_num_rows($userAlreadyExistsResult) > 0)
        {
            echo json_encode(
                array(
                    "status" => "failed",
                    "message" => "User Already Exists!",
                )
            );
        }
        else
        {
            $pass = password_hash($pass, PASSWORD_DEFAULT);
        
            $fname = mysqli_real_escape_string($conn, $fname);
            $lname = mysqli_real_escape_string($conn, $lname);
            $email = mysqli_real_escape_string($conn, $email);
            // $phone = mysqli_real_escape_string($conn, $phone);
            $pass = mysqli_real_escape_string($conn, $pass);
        
            $sqlInsertLogin = "insert into login(email, password) values ('$email', '$pass')";
        
            if(mysqli_query($conn, $sqlInsertLogin))
            {
                $sqlFetchUID = "select uid from login where email = '$email';";
                $query = mysqli_query($conn, $sqlFetchUID);
        
                if($query)
                {
                    $result = mysqli_fetch_assoc($query);
                    $uid = $result["uid"];
        
                    // $sqlInsertUsers = "insert into users(uid, phone, fname, lname) values ($uid, '$phone', '$fname', '$lname');";
                    $sqlInsertUsers = "insert into users(uid, fname, lname) values ($uid, '$fname', '$lname');";
        
                    if(mysqli_query($conn, $sqlInsertUsers))
                    {
                        
                    }
                    else 
                    {
                        echo mysqli_error($conn);
                    }
                }
                else 
                {
                    echo mysqli_error($conn);
                }
            }
            else 
            {
                echo mysqli_error($conn);
            }
        }
    }
    else
    {
        header('HTTP/1.1 405 Method Not Allowed');
        echo 'Invalid request method';
    }
    
?>
