<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%-- <jsp:useBean id="clt" scope="session" class="fr.uvsq.bean.Client"/> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Espace Client</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/pages/TemplateConf/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/pages/TemplateConf/css/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
				<%@ include file="/pages/includes/nav_bar_header.jsp" %>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<%@ include file="/pages/includes/nav_bar.jsp" %>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Calvin Klein</p>
                <div class="list-group">
					<%@ include file="/pages/includes/side_bar_espace_client.jsp" %>
                </div>
            </div>

            <div class="col-md-9">
				<section>
					<logic:notPresent name="clt">
				    	<logic:redirect forward="Connexion"/>
				    </logic:notPresent>
					<aside>
			               <h1> Vos informations :</h1>
			           </aside>
			           <article>
			           	
			           		<table>
								<tr>
									<td><strong>Nom  :</strong></td><td><bean:write name="clt" property="nomClient"/></td>
								</tr>
								<tr>
									<td><strong>Prenom : </strong> </td><td><bean:write name="clt" property="prenomClient"/></td>
								</tr>
								<tr>	
									<td><strong>Tel : </strong> </td><td><bean:write name="clt" property="telClient"/></td>
								</tr>
								<tr>
									<td><strong>Email : </td><td><bean:write name="clt" property="emailClient"/></strong> </td>
								</tr>
								<tr>
									<td><strong>Mot de passe : </td><td>************</strong> </td>
								</tr>
								<tr>	
									<td><strong>Carte de fidélité : </strong> </td><td><bean:write name="clt" property="catFideliteClient"/></td>
								</tr>
								<tr>	
									<td><strong>Point de fidélité : </strong> </td><td><bean:write name="clt" property="pointFideliteClient"/></td>
								</tr>
								<tr>	
									<td colspan="2">
										<fieldset>
											<legend>Adresse :</legend>
											<table>
												<tr>
													<td><strong>Numero du domicil : </strong> </td><td><bean:write name="clt" property="adrClient.numDomicil"/></td>
												</tr>
												<tr>	
													<td><strong>Rue/Avenue : </strong> </td><td><bean:write name="clt" property="adrClient.rue"/></td>
												</tr>
												<tr>	
													<td><strong>Adresse postal : </strong> </td><td><bean:write name="clt" property="adrClient.codePostal"/></td>
												</tr>
												<tr>
													<td><strong>Ville : </strong> </td><td><bean:write name="clt" property="adrClient.ville"/></td>
												</tr>
											</table>
										</fieldset>
									</td>
								</tr>
								
								<tr>	
									<td colspan="2">
										<logic:iterate name="clt" property="liste_CoordBank" id="coordB">
											<fieldset>
												<legend> Coordonnés bancaire : </legend>
												<table>
													<tr>
														<td><strong>Banque : </strong> </td><td><bean:write name="coordB" property="nomBank"/></td>
													</tr>
													<tr>	
														<td><strong>N° du compte : </strong> </td><td><bean:write name="coordB" property="numCompteBank"/></td>
														<td><strong>Date de validité : </strong> </td><td><bean:write name="coordB" property="dateValidite"/></td>
													</tr>
												</table>
											</fieldset>
										</logic:iterate>
									</td>
								</tr>
			           		</table>
			           </article>
				</section>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright CK - Tous droits réservés
                    	<br>
           				<a href="#">contact us !</a></p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
