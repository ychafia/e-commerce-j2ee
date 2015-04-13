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
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pages/TemplateConf/css/goldenforms-pro.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pages/TemplateConf/css/font-awesome.min.css">
    
    <script src="<%=request.getContextPath()%>/pages/TemplateConf/js/jquery-1.9.1.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="frm-bg2">

	<div class="goldenforms-pro">
   		<div class="goldenforms-wrapper">
              <div class="goldenforms-container gpro-container4">
					<div class="frm-header">
                     	<h4> <center>EDORA</center></h4>
                    </div><!-- end .frm-header section -->
					<div class="frm-body">
					    <html:form action="Login.do" method="post">
					  		<div class="spacer-b30">
	                         	<div class="tagline"><span> Connectez-vous </span></div><!-- .tagline -->
	                        </div>
	                        
	                        <div class="frm-row">
								<div class="notification alert-warning spacer-t10">
	                                <p><html:errors/></p>                                
	                            </div><!-- end .notification section -->
                            </div><br>
                            
                            <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="exemple@exmple.ex" name="email">
	                                 </label>
	                             </div><!-- end section -->
	                             
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="password" class="uit-input" placeholder="Mot de passe" name="mdp">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-footer">
		                         <center>
			                        	<button type="submit" class="uit-button btn-blue"> Valider </button>
			                            <button type="reset" class="uit-button"> Annuler </button><br><br>
			                            <html:link page="/Inscription.do"><bean:message key="ConnexionForm.inscrivez" /></html:link>
										<html:link page="/ForgotMdp.do"><bean:message key="ConnexionForm.mdperdu" /></html:link>
								 </center>
	                         </div><!-- end .frm-footer section --> 
	                         
					  	</html:form>
					</div>
              </div>
        </div>
    </div>
   
<!--     <div class="container">

        <hr>

        Footer
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; UVSQ 2015</p>
                </div>
            </div>
        </footer>

    </div> -->
    <!-- /.container -->

    <!-- jQuery -->
    <script src="pages/TemplateConf/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="pages/TemplateConf/js/bootstrap.min.js"></script>

</body>

</html:html>