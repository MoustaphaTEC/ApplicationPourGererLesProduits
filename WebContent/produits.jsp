<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Produits</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
</head>
<body>
	<div class="container col-md-10 col-md-offset-1">
		<div class="card border-primary">
			<div class="card-heading text-white bg-primary">Recherche des produits</div>
			<div class="card-body">
			<form action="chercher.do" method="get">
			<label>Mot Cle </label>
			<input type="text" name="motCle" value="${model.motCle}"/>
			<a href="#" class="search_icon"><i class="fas fa-search"></i></a>
			<button type="submit" class="btn btn-primary">Chercher</button>
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
					</tr>
				</c:forEach>
			</table>
			</div>  
		</div>
	</div>
</body>
</html> 