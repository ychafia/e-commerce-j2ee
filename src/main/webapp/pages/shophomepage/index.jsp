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

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <%@ include file="../includes/nav_bar_header.jsp" %>
            </div>    
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <%@ include file="../includes/nav_bar.jsp" %>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="row">

            <div class="col-md-3">
                <p class="lead">
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
                </p>
                <div class="list-group">
                    <a href="#" class="list-group-item">Femme</a>
                    <a href="#" class="list-group-item">Homme</a>
                    <a href="#" class="list-group-item">Enfant</a>
                </div>
            </div>

            <div class="col-md-9">
			
                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://georgetowneye.com/wp-content/uploads/eyeglasses_ck.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://www.mmuga.de/WebRoot/Store/Shops/15235268/4EF5/96E0/D0DA/9546/BD3C/C0A8/28BD/768C/1920-Herrenschuhe-schwarz012.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://www.modernists.fr/magazine/wp-content/uploads/2014/01/937d62dfe6710e9db71231f52c3442d6.jpg" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://i.ebayimg.com/00/s/NTk5WDE2MDA=/$T2eC16JHJHgE9n0yEYr6BQ8OGTqfH!~~60_3.jpg" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">
 					<logic:iterate name="maListeProd" id="UnProd">
	                    <div class="col-sm-4 col-lg-4 col-md-4">
	                        <div class="thumbnail">
	                            <img src="http://www.city-optik-muenchen.de/carousal/CalvinKlein.jpg" alt="">
	                            <div class="caption">
	                                <h4 class="pull-right"><bean:write name="UnProd" property="prixVenteProd"/>EURO</h4>
	                                <h4><a href='detailsprod.do?refp=<bean:write name="UnProd" property="refProd"/>'><bean:write name="UnProd" property="libelleProd"/></a>
	                                </h4>
	                                <p>
	                                	Marque : <bean:write name="UnProd" property="marqueProd"/><br>
	                                	Couleur : <bean:write name="UnProd" property="couleurProd"/><br>
	                                	Taille : <bean:write name="UnProd" property="tailleProd"/><br>
	                                	<input class='ibutton' type='button' onclick='
													sendAjax(
																<bean:write name="UnProd" property="refProd"/>,<bean:write name="UnProd" property="prixVenteProd"/>
													)' 
													value='Ajouter'/> 
	                                </p>
	                            </div>
	                            <div class="ratings">
	                                <p class="pull-right">31 reviews</p>
	                                <p>
	                                    <span class="glyphicon glyphicon-star"></span>
	                                    <span class="glyphicon glyphicon-star"></span>
	                                    <span class="glyphicon glyphicon-star"></span>
	                                    <span class="glyphicon glyphicon-star"></span>
	                                    <span class="glyphicon glyphicon-star-empty"></span>
	                                </p>
	                            </div>
	                        </div>
	                    </div>
	                </logic:iterate> 
                </div>

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
                    <p>Copyright &copy; Your Website 2014</p>
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
