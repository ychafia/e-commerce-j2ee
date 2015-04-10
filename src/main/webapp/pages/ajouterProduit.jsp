<%--
    Licensed to the Apache Software Foundation (ASF) under one or more
    contributor license agreements.  See the NOTICE file distributed with
    this work for additional information regarding copyright ownership.
    The ASF licenses this file to You under the Apache License, Version 2.0
    (the "License"); you may not use this file except in compliance with
    the License.  You may obtain a copy of the License at
   
         http://www.apache.org/licenses/LICENSE-2.0
   
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin - Ajout Product - Calvin Klein | CK ®</title>

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

           

            <div class="col-md-9">
			<br><br><br><br>
                <form method="post" action="versAjouterProduit.do">
                    <table>
                           <tr><td>libelle Produit </td>        <td><input type="text" name="libelleProduit" placeholder="nom du produit"></td></tr>
                           <tr><td>prix d'Achat </td>            <td><input type="text" name="prixAchat" placeholder="prix d'achat"></td></tr>
                           <tr><td>prix de Vente </td>            <td><input type="text" name="prixVente" placeholder="prix de vente"></td></tr>
                           <tr><td>marque du Produit </td>        <td><input type="text" name="marqueProduit" placeholder="marque"></td></tr>
                           <tr><td>couleur du Produit </td>    <td><input type="text" name="couleurProduit" placeholder="couleur"></td></tr>
                           <tr><td>type du Produit </td><td>
                                                           <select name="typeProduit">
                                                            <option value="homme">Hommes</option>
                                                            <option value="femme">Femmes</option>
                                                            <option value="enfant">Enfants</option>
                                                        </select>
                        </tr>
                           <tr><td>Taille du Produit </td>        <td><input type="text" name="tailleProduit" placeholder="taille"></td></tr>
                           <tr><td>description du Produit </td><td><textarea name="descriptionProduit" cols=30 rows=5></textarea></td></tr>
                    </table>
                    <input type="submit" value="Ajouter Produit">
                </form>

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
                    <p>Copyright &copy; Your UVSQ 2014</p>
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

</html:html>