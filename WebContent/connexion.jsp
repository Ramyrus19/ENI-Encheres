<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Connexion - ENI Ench�res</title>
</head>
<body>
	<h1>Connexion utilisateur</h1>
	<h4>${credentials}</h4>
	<h4>${status}</h4>
	<form action="AfficherEncheresServlet" method="POST">
		Identifiant : <input type="text" name="user" value="${model.identifiant}"><br><br> 
		Mot de passe : <input type="text" name="mdp" value="${model.motDePasse}"><br><br>
		<input type="submit" value="Connexion">
		<input type="checkbox" name="souvenir">Se souvenir de moi<br>
		<br> <a href="">Mot de passe oubli�</a><br><br>
	</form>
	<a href="/InscriptionServlet">Cr�er un compte</a>
</body>
</html>