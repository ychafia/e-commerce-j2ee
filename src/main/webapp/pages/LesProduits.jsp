<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des produits</title>
<style type="text/css">
nav
{
    float: left;
    width: 250px;
    border: 1px solid black;
}

section
{
    margin-left: 300px;
    border: 1px solid blue;
}
</style>
<script src="js/jquery.1.9.1.min.js"></script>
<script type="text/javascript">

function sendAjax(ref, prix) {
	 
	    if($('#idClt').val() == 0 ){
			window.location = "Connexion.do"
		}
	    var article = new Object();
	    article.refProd = ref;
		article.dateAjout = new Date();
		article.prixProd = prix;
		article.idClt = $('#idClt').val();
	
	    $.ajax({
	        url: "ajouterPanier.do",
	        type: 'POST',
	        dataType: 'json',
	        data: JSON.stringify(article),
	        contentType: 'application/json',
	        mimeType: 'application/json',
			success: function (data) {
				 $("tr:has(td)").remove();
				$.each(data, function (index, article) {
					$("#added-articles").append($('<tr/>')
	                        .append($('<td/>').html("<span>"+article.refProd+"</span>"))
							.append($('<td/>').html("<span>"+article.prixProd+"</span>"))
	                );
				});
			},
			error:function(data,status,er) {
	            alert("Vous devez vous connecter avant toute opération !!!");
	        }
	    });
}
</script>
</head>
<body bgcolor="#89e6eb">
	<header align="center">
		<h1>Edora</h1>
	</header>
	<br><br>
	<nav id="nav_menu_gauche">
		<ul>
            <li><a href="#">Accueil</a></li>
            <li><a href="#">Chemise</a></li>
            <li><a href="#">Cravate</a></li>
			<li><a href="#">Pantalon</a></li>
			<li><a href="#">Chaussette</a></li>
			<li><a href="#">Chaussure</a></li>
        </ul>
	</nav>
	
	<section>
		<logic:present name="clt">
			<aside>
				<center>
					<h1> <h2>Bienvenue <bean:write name="clt" property="nomClient"/></h2></h1>
					<input type="hidden" name="idClt" id="idClt" value='<bean:write name="clt" property="idClient"/>'/>
				</center>
	        </aside>
	    </logic:present>
	    <logic:notPresent name="clt">
	    	<input type="hidden" name="idClt" id="idClt" value="0"/>
	    </logic:notPresent>
		<aside>
			<h1> Liste de nos produits</h1>
        </aside>
        <article>
        	<table>
        		<logic:iterate name="maListeProd" id="UnProd">
	        		<fieldset>
						<legend> 
							<bean:write name="UnProd" property="libelleProd"/> :
							<input class='ibutton' type='button' onclick='
													sendAjax(
																<bean:write name="UnProd" property="refProd"/>,<bean:write name="UnProd" property="prixVenteProd"/>
													)' 
													value='Ajouter'/> 
						</legend>
						+ Ref. produit : <span id="refProd"><bean:write name="UnProd" property="refProd"/></span><br> 
						+ Marque : <span id="marqueProd">  <bean:write name="UnProd" property="marqueProd"/></span><br>
						+ Couleur : <span id="couleurProd">  <bean:write name="UnProd" property="couleurProd"/></span><br>
						+ Type : <span id="typeProd">  <bean:write name="UnProd" property="typeProd"/></span><br>
						+ Taille : <span id="tailleProd">  <bean:write name="UnProd" property="tailleProd"/></span><br>
						+ Prix :  <strong><font color="red"><span id="prixVenteProd"><bean:write name="UnProd" property="prixVenteProd"/></span></font> EURO<br></strong>
					</fieldset>
				</logic:iterate>
        	</table>
        </article>
        <article>
			<table id="added-articles" class="table">
				<tr>
					<th>Produit</th>
					<th>Quantité</th>
				</tr>
			</table>
        </article>
	</section>
	<footer align="center">
		<p>Copyright Edora - Tous droits réservés<br />
           <a href="#">Me contacter !</a></p>
	</footer>
</body>
</html>