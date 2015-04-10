<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
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

			<center>
	            <div class="col-md-9">
						<h1>Connexion</h1><br>
						<hr><br><br>
						<hr><br><br>
						<font color="red">
							<html:errors/>
						</font>
						<html:form action="Login.do" method="post">
							<bean:message key="ConnexionForm.email" />
							<html:text property="email" size="30" maxlength="30" />
							
							<bean:message key="ConnexionForm.mdp" />
							<html:password property="mdp" size="30" maxlength="30" />
							<br><br>
							<center>
								<html:submit>Valider</html:submit>
								<html:reset>Annuler</html:reset><br><br>
							
								<html:link page="/Inscription.do"><bean:message key="ConnexionForm.inscrivez" /></html:link>
								<html:link page="/ForgotMdp.do"><bean:message key="ConnexionForm.mdperdu" /></html:link>
							</center>
						</html:form>
						
	            </div>
			</center>
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
    <script src="pages/TemplateConf/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="pages/TemplateConf/js/bootstrap.min.js"></script>

</body>

</html:html>