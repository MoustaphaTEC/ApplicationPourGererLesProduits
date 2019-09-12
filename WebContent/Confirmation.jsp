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
			<div class="card-header text-white bg-primary">Confirmation</div>
			<div class="card-body">
				<div class="form-group">
					<label>ID:</label>
					<label>${produit.id}</label>
				</div>
				<div class="form-group">
					<label>Désignation:</label>
					<label>${produit.designation}</label>
				</div>				
				<div class="form-group">
					<label>Prix:</label>
					<label>${produit.prix}</label>
				</div>
				<div class="form-group">
					<label>Quantité:</label>
					<label>${produit.quantite}</label>
				</div>				
			</div>  
		</div>
	</div>
</body>
</html> 