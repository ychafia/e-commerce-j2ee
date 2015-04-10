<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html:html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Client -Sign Up to Calvin Klein | CK ®</title>

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
					<center><h1>Créez votre compte gratuitement</h1><br></center>
					<hr><br><br>
					
					<html:form action="SingUp.do" method="post">
						<table align="center">
							<tr>
								<td colspan="2">
									<font color="red">
										<html:errors/>
									</font>
								</td>
							</tr>
							<tr>
								<td>Nom : </td>
								<td><html:text property="nom" size="20" maxlength="20" /></td>
							</tr>
							<tr>
								<td>Prenom : </td>
								<td><html:text property="prenom" size="20" maxlength="20" /></td>
							</tr>
							<tr>
								<td>Mot de passe : </td>
								<td><html:password property="mdp" size="20" maxlength="20" /></td>
							</tr>
							<tr>
								<td>Confirmation du mot de passe : </td>
								<td><html:password property="mdp2" size="20" maxlength="20" /></td>
							</tr>
							<tr>
								<td>Telephone : </td>
								<td><html:text property="tel" size="20" maxlength="13" /></td>
							</tr>
							<tr>
								<td>Adresse mail</td>
								<td><html:text property="email" size="20" maxlength="30" /></td>
							</tr>
							<tr>
							<tr><td colspan="2"><center>---------------------------------------</center></td></tr>
							<tr>
								<td>Numéro du domicile : </td>
								<td><html:text property="numDomicile" size="20" maxlength="13" /></td>
							</tr>
							<tr>
								<td>Nom de la rue</td>
								<td><html:text property="nomRue" size="20" maxlength="30" /></td>
							</tr>
							<tr>
								<td>Etage : </td>
								<td><html:text property="etage" size="20" maxlength="13" /></td>
							</tr>
							<tr>
								<td>Ville : </td>
								<td><html:text property="ville" size="20" maxlength="13" /></td>
							</tr>
							<tr>
								<td>Code postal : </td>
								<td><html:text property="codePost" size="20" maxlength="13" /></td>
							</tr>
							
							</tr>
							<tr>
								<td align="center" colspan="2"><html:submit>Valider</html:submit></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
					</html:form>
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
                    <p>Copyright &copy; UVSQ 2015</p>
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