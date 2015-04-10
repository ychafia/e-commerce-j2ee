<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

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
<!--  a la place du include side bar -->
            <div class="col-md-3">
                <p class="lead">Calvin Klein</p>
                <div class="list-group">
					<%@ include file="/pages/includes/side_bar_espace_client.jsp" %>
                </div>
            </div>

            <div class="col-md-9">
				<br><br>
				<nav id="nav_menu_gauche">

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
						<h1> Mon panier </h1>
					</aside>
					<article>
		                <div class="row">
							<logic:iterate name="listeDetPan" id="UnProd">
			                    <div class="col-sm-4 col-lg-4 col-md-4">
			                        <div class="thumbnail">
			                            <img src="http://placehold.it/320x150" alt="">
			                            <div class="caption">
			                                <h4 class="pull-right">$24.99</h4>
			                                <h4><a href="#"><bean:write name="UnProd" property="produit.libelleProd"/></a></h4>
			                                <br>
			                                <h5><bean:write name="UnProd" property="produit.marqueProd"/></h5>
			                                <p>
			                                	marque : <bean:write name="UnProd" property="produit.marqueProd"/><br>
			                                	tailles <bean:write name="UnProd" property="produit.tailleProd"/><br>
			                                	couleur <bean:write name="UnProd" property="produit.couleurProd"/><br>
			                                	dans le panier depuis : <bean:write name="UnProd" property="dateAjout"/><br>
			                                	quantitée : <bean:write name="UnProd" property="qte"/><br>
			                                </p>
			                            </div>
			                            <div class="ratings">
			                                <p class="pull-right">15 reviews</p>
			                                <p>
			                                    <span class="glyphicon glyphicon-star"></span>
			                                    <span class="glyphicon glyphicon-star"></span>
			                                    <span class="glyphicon glyphicon-star"></span>
			                                    <span class="glyphicon glyphicon-star"></span>
			                                    <span class="glyphicon glyphicon-star"></span>
			                                </p>
			                            </div>
			                        </div>
			                    </div>
							</logic:iterate>
		                </div>
						
                
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
                    <p>	Copyright CK - UVSQ
						<br>
						<a href="#">Contacter Us!</a>
					</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="pages/TemplateConf/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="pages/TemplateConf/js/bootstrap.min.js"></script>

</body>

</html>
