
<?php

    //Import PHPMailer classes into the global namespace
    //These must be at the top of your script, not inside a function
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    //Load Composer's autoloader
    require 'vendor/autoload.php';

    //Create an instance; passing `true` enables exceptions
    $mail = new PHPMailer(true);

    $mailType = $_GET['mailType'] ?? '';

    if ($mailType == "emailVerification") {

        $email = $_GET['email'] ?? '';
        $name = $_GET['name'] ?? '';

        $code = rand(100000, 999999);

        try {
            // Server settings
            // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.zoho.in';                     //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'contact@gamecrash.tech';                     //SMTP username
            $mail->Password   = 'Indian@DevSheersh9702';                               //SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;            //Enable implicit TLS encryption
            $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
            $mail->FromName   = "E Commerce Team";

            //Recipients
            $mail->setFrom('contact@gamecrash.tech', 'E Commerce Team');
            $mail->addAddress($email, $name);

            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = $code.' is your verification code for E Commerce App';
            $mail->Body    = '<b>'.$code.'</b> is your verification code for E Commerce App';
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            $mail->send();

            echo json_encode(
                array(
                    "status" => "success",
                    "message" => "Email Verification Mail has sent!, Please check your mail",
                )
            );

        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }

    if ($mailType == "testMail")
    {
        try {
            // Server settings
            // $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
            $mail->isSMTP();                                            //Send using SMTP
            $mail->Host       = 'smtp.zoho.in';                     //Set the SMTP server to send through
            $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
            $mail->Username   = 'contact@gamecrash.tech';                     //SMTP username
            $mail->Password   = 'Indian@DevSheersh9702';                               //SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;            //Enable implicit TLS encryption
            $mail->Port       = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
            $mail->FromName   = "E Commerce Team";
    
            //Recipients
            $mail->setFrom('contact@gamecrash.tech', 'E Commerce Team');
            $mail->addAddress('sheershbhatnagar2@zohomail.in', 'Sheersh');
    
            //Content
            $mail->isHTML(true);                                  //Set email format to HTML
            $mail->Subject = 'Test Mail';
            $mail->Body    = 'Test Mail';
            $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
            $mail->send();
    
            echo json_encode(
                array(
                    "status" => "success",
                    "message" => "Email Verification Mail has sent!, Please check your mail",
                )
            );
    
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }

?>
