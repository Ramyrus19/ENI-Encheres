<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset="ISO-8859-1">
<title>Inscription-Encheres</title>
</head>
<body>

<div class="container py-5">
    <div class="row">
        <div class="col-md-12 mx-auto">
        	<h1 class="h3 mb-3 font-weight-normal text-center">Mon profil</h1>
        	<c:if test="${error != null}">
	        	<div class="alert alert-danger" role="alert">
				  	${error}
				</div>       	
        	</c:if>
            <form action="/ENI-Encheres/register" method="POST">
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="pseudo">Pseudo : </label>
						<input type="text" name="pseudo" id="pseudo" class="form-control" placeholder="Pseudo" value="${model.utilisateur.pseudo}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="nom">Nom : </label>
						<input type="text" name="nom" id="nom" class="form-control" placeholder="Nom" value="${model.utilisateur.nom}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="prenom">Prénom : </label>
						<input type="text" name="prenom" id="prenom" class="form-control" placeholder="Prénom" value="${model.utilisateur.prenom}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="email">Email : </label>
						<input type="email" name="email" id="email" class="form-control" placeholder="Email" value="${model.utilisateur.email}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="telephone">Téléphone : </label>
						<input type="text" name="telephone" id="telephone" class="form-control" placeholder="Téléphone" value="${model.utilisateur.telephone}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="rue">Rue : </label>
						<input type="text" name="rue" id="rue" class="form-control" placeholder="Rue" value="${model.utilisateur.rue}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="code-postal">Code postal : </label>
						<input type="text" name="code-postal" id="code-postal" class="form-control" placeholder="Code postal" value="${model.utilisateur.codePostal}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="ville">Ville : </label>
						<input type="text" name="ville" id="ville" class="form-control" placeholder="Ville" value="${model.utilisateur.ville}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <label for="password">Mot de passe : </label>
						<input type="password" name="password" id="password" class="form-control" placeholder="Mot de passe" value="${model.utilisateur.motDePasse}" required>
                    </div>
                    <div class="col-sm-6">
                        <label for="confirm-password">Confirmation mot de passe : </label>
						<input type="password" name="confirm-password" id="confirm-password" class="form-control" placeholder="Nom" required>
                    </div>
                </div>
                <input type="submit" name="register" class="btn btn-primary px-4 float-left" value="Créer">
	            <a class="btn btn-warning px-4 float-right" href="/ENI-Encheres/accueil">Annuler</a>
            </form>
            
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>