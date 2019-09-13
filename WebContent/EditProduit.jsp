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

	<div class="container col-md-8 col-md-offset-2">
		<div class="card border-primary">
			<div class="card-header text-white bg-primary">Modifer le produit</div>
			<div class="card-body">
				<form action="UpdateProduit.do" method="post">
				<div class="form-group">
						<label class="control-label">ID</label>
						<input type="text" name="id" value="${produit.id}" class="form-control" required="required"/>
						<span></span><!-- pour afficher les messages d'erreurs -->
					</div>
					<div class="form-group">
						<label class="control-label">Désignation</label>
						<input type="text" name="designation" value="${produit.designation}" class="form-control" required="required"/>
						<span></span><!-- pour afficher les messages d'erreurs -->
					</div>
					
					<div class="form-group">
						<label class="control-label">Prix</label>
						<input type="text" name="prix" value="${produit.prix}" class="form-control" required="required"/>
						<span></span><!-- pour afficher les messages d'erreurs -->
					</div>
					
					<div class="form-group">
						<label class="control-label">Quantité</label>
						<input type="text" name="quantite" value="${produit.quantite}" class="form-control"required="required"/>
						<span></span><!-- pour afficher les messages d'erreurs -->
					</div>
					<div>
						<button class="btn btn-primary" type="submit">Enregistrer</button>
					</div>
				</form>			
			</div>  
		</div>
	</div>
</body>
</html> 