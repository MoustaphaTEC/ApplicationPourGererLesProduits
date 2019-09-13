<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produits</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
<%@include file="enTete.jsp" %>
<p></p>

	<div class="container col-md-10 col-md-offset-1">
		<div class="card border-primary">
			<div class="card-header text-white bg-primary">Recherche des produits</div>
			<div class="card-body">
			<form action="chercher.do" method="get">
			<label>Mot Cle </label>
			<input type="text" name="motCle" value="${model.motCle}" placeholder="chercher"/>
      		<button class="btn btn-primary" type="submit">Chercher</button>
			<br></br>
			</form>
			<table class="table table-striped">
				<tr>
					<th>ID</th><th>Designation</th><th>Prix</th><th>Quantite</th>
				</tr>
				<c:forEach items="${model.produits}" var="p">
					<tr>
						<td>${p.id}</td>
						<td>${p.designation}</td>
						<td>${p.prix}</td>
						<td>${p.quantite}</td>
						<td><a onclick="return confirm('etes-vous sure?')" href="Supprime.do?id=${p.id}">Supprimer</a></td>
						<td><a href="Edite.do?id=${p.id}">Editer</a></td>
					</tr>
				</c:forEach>
			</table>
			</div>  
		</div>
	</div>
</body>
</html> 