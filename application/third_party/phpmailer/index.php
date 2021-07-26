<?php
require("class.phpmailer.php");

$mail = new PHPMailer();

$mail->IsSMTP();
$mail->SMTPDebug = 0;
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;
$mail->Username = 'cafebromind@gmail.com';
$mail->Password = 'belajarasteroit123';
$mail->SMTPSecure = 'ssl';
$mail->Port = 465;
$mail->SMTPOptions = array(
	'ssl' => array(
		'verify_peer' => false,
		'verify_peer_name' => false,
		'allow_self_signed' => true
	)
);

$mail->setFrom('cafebromind@gmail.com','admin');
$mail->addAddress('putrabina0@gmail.com','USER');

$mail->addReplyTo('info@example.com','Information');
$mail->addCC('cc@example.com');
$mail->addBCC('bcc@example.com');

//$mail->addAttachment('/var/tmp/file.tar.gz');
//$mail->addAttachment('/tmp/image.jpg','new.jpg');
$mail->isHTML(true);

$mail->Subject = 'ASU';
$mail->Body = 'Koe asu';
$mail->AltBody = 'This is asu';

if(!$mail->send()){
	echo "Message could not be send";
	echo "Mailer error". $mail->ErrorInfo;
} else {
	echo "Massage has been send";
}