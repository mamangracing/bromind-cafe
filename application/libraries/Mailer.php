<?php defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Mailer{

	protected $_ci;
	protected $email_pengirim = 'cafebromind@gmail.com';
	protected $nama_pengirim = 'System';
	protected $password = 'belajarasteroit123';

	public function __construct()
	{
		//set variabel _ci dengan fungsi2 dari codeigniter
		$this->_ci =&get_instance();

		require_once(APPPATH.'third_party/phpmailer/Exception.php');
		require_once(APPPATH.'third_party/phpmailer/PHPMailer.php');
		require_once(APPPATH.'third_party/phpmailer/SMTP.php');
	}

	public function send($data)
	{
		$mail = new PHPMailer;
		$mail->isSMTP();

		$mail->Host = 'smtp.gmail.com';
		$mail->Username = $this->email_pengirim;
		$mail->Password = $this->password;

		$mail->Port = 465;
		$mail->SMTPAuth = true;
		$mail->SMTPSecure = 'ssl';
		$mail->SMTPDebug = 2;

		$mail->setFrom($this->email_pengirim, $this->nama_pengirim);
		$mail->addAddress($data['email_penerima'], '');
		$mail->isHTML(true);

		$mail->Subject = $data['subject'];
		$mail->Body = $data['content'];
		//$mail->AddEmbeddedImage('assets/img/logo_BM.png');

		$send = $mail->send();

		if($send){
			$response = array(
				'status' => 'Sukses',
				'message' => 'Email berhasil dikirim'
			);
		} else {
			$response = array(
				'status' => 'gagal',
				'message' => 'email gagal dikirim'
			);
		}

		return $response;
	}

	public function send_with_attachment($data)
	{
		$mail = new PHPmailer;
		$mail->isSMTP();

		$mail->Host = 'smtp.gmail.com';
		$mail->Username = $this->email_pengirim;
		$mail->Password = $this->password;

		$mail->Port = 465;
		$mail->SMTPAuth = true;
		$mail->SMTPSecure = 'ssl';
		$mail->SMTPDebug = 2;

		$mail->setFrom($this->email_pengirim, $this->nama_pengirim);
		$mail->addAddress($data['email_penerima'], '');
		$mail->isHTML(true);

		$mail->Subject = $data['subject'];
		$mail->Body = $data['content'];
		$mail->AddEmbeddedImage('assets/img/logo_BM.png');

		if($data['attachment']['size'] <= 25000000){
			$mail->addAttachment($data['attachment']['tmp_name'], $data['attachment']['name']);

			$send = $mail->send();

			if($send){
				$response = array(
					'status' => 'Sukses',
					'message' => 'Email berhasil dikirim'
				);
			} else {
				$response = array(
					'status' => 'gagal',
					'message' => 'email gagal dikirim'
				);
			}
		}else{
			$response = array(
				'status' => 'gagal',
				'message' => 'ukuran file attachment maksimal 25mb'
			);
		}

		return $response;
	}
}