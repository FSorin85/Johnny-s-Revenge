<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="InscriConnex.css"/>
</head>
<body>
<fieldset>
    <legend>Inscription</legend>
    <form method="post" action="Carte.html"  class="inscription">
        <label for="pseudo">Votre pseudo :</label>
        <input type="text" name="pseudo" id="pseudo" pattern=".{5,15}" title ="entre 5 et 15 caractères" maxlength="15" size="15" required autofocus />
        <label for="passwd">Votre mot de passe :</label>
        <input type="password" name="passwd" id="passwd" pattern=".{5,15}" title ="entre 5 et 15 caractères" maxlength="15" required />
        <label for="passwdVerif">Vérification de votre mot de passe :</label>
        <input type="password" name="passwdVerif" id="passwdVerif" pattern=".{5,15}" title ="entre 5 et 15 caractères" maxlength="15" required />
        <label for="email">Votre @email :</label>
        <input type="email" name="mail" id="email" placeholder="prénom.nom@imie.fr" maxlength="30" required />
        <label for="emailVerif">Vérification de votre @email :</label>
        <input type="email" name="mailVerif" id="emailVérification" placeholder="prénom.nom@imie.fr" pattern=".+@imie.fr"
               title="Merci de fournir uniquement une adresse IMIE" maxlength="30" required />
        <input type="submit" class="btn btn-dark" value="S'inscrire">
    </form>
</fieldset>
<fieldset>
    <legend class ="co">Connexion</legend>
    <form method="post" action="Carte.html"  class="connexion">
        <label for="pseudo">Votre @email :</label>
        <input type="email" name="email" id="email" maxlength="30" placeholder="prénom.nom@imie.fr" pattern=".+@imie.fr"
               title="Merci de fournir uniquement une adresse IMIE"  required autofocus>
        <label for="passwd">Votre mot de passe:</label>
        <input type="password" name="passwd" id="passwd" pattern=".{5,15}" title ="entre 5 et 15 caractères" maxlength="15" required />
        <input type="submit" class="btn btn-dark" value="Se connecter" />
    </form>
</fieldset>
<script type="application/javascript" src="InscriConnex.js"></script>
</body>
</html>
<?php
$pseudo = $_POST['pseudo'];
$password = password_hash($_POST['passwd'], PASSWORD_DEFAULT);
$email = $_POST['mail'];

$connection = new PDO("mysql:host=localhost;dbname=jr", 'root', '');
$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$query = 'INSERT INTO jr.user (pseudo_user, password_user, email_user) VALUES (:pseudo, :password, :email)';
$stmt = $connection->prepare($query);
$stmt->bindValue('pseudo', $pseudo);
$stmt->bindValue('password', $password);
$stmt->bindValue('email', $email);
$stmt->execute();
?>