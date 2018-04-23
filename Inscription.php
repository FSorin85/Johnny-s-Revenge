<?php


@$pseudo = $_POST['pseudo'];
@$password = password_hash($_POST['passwd'], PASSWORD_DEFAULT);
@$email = $_POST['mail'];

$connection = new PDO("mysql:host=localhost;dbname=jr", 'root', '');
$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$query = 'INSERT INTO jr.user (pseudo_user, password_user, email_user) VALUES (:pseudo, :password, :email)';
$stmt = $connection->prepare($query);
$stmt->bindValue('pseudo', $pseudo);
$stmt->bindValue('password', $password);
$stmt->bindValue('email', $email);
$stmt->execute();
header('Location: http://localhost/umake/Carte.php');
exit();
