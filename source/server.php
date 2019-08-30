<?php 
// Name
$name = $_POST['name'];
// email
$email = $_POST['email'];
// phone
$phone = $_POST['phone'];
// address
$address = $_POST['address'];
// message
$message = $_POST['detailed'];
// 
$formcontent="From: $name \n Message: $message";
$recipient = "chaos67731@gmail.com";
$subject = "Contact Form";
$mailheader = "From: $email \r\n";
mail($recipient, $subject, $formcontent, $mailheader) or die("Error!");
echo "Thank You!";
?>