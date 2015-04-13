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
                    	<html:form action="SingUp.do" method="post">
	                    	<div class="spacer-b30">
	                         	<div class="tagline"><span>Créez votre compte gratuitement </span></div><!-- .tagline -->
	                        </div>
	                        
							<div class="frm-row">
								<div class="notification alert-warning spacer-t10">
	                                <p><html:errors/></p>                                
	                            </div><!-- end .notification section -->
                            </div>
                            <br>
	                         
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Nom" property="nom" name="nom">
	                                 </label>
	                             </div><!-- end section -->
	                             
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Prenom" property="prenom" name="prenom">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="password" class="uit-input" placeholder="Mot de passe" property="mdp" name="mdp">
	                                 </label>
	                             </div><!-- end section -->
	                             
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="password" class="uit-input" placeholder="Confirmer mot de passe" property="mdp2" name="mdp2">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section --> 
	                         <div class="frm-row">
	                             	<div class="frm-section colm colm6">           
	                                    <label class="field uit-select">
	                                        <select name="civilite">
	                                            <option value="0">Civilite</option>
	                                            <option value="Monsieur"> Monsieur </option>
	                                            <option value="Madame"> Madame </option>
	                                        </select>                     
	                                    </label>
	                                </div><!-- end section -->
	                                <div class="frm-section colm colm6">
		                                 <label class="field">
		                                     <input type="text" class="uit-input" placeholder="Adresse mail" property="email" name="email">
	                             	      </label>
	                             	</div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         <br>
	                         <div class="spacer-b30">
	                         	<div class="tagline"><span> Adresse </span></div><!-- .tagline -->
	                         </div>
	                        
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Téléphone" property="tel" name="tel">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Numéro du domicile" property="numDomicile" name="numDomicile">
	                                 </label>
	                             </div><!-- end section -->
	                             
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Nom de la rue" property="nomRue" name="nomRue">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Etage" property="etage" name="etage">
	                                 </label>
	                             </div><!-- end section -->
	                             
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Ville" property="ville" name="ville">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-row">
	                             <div class="frm-section colm colm6">
	                                 <label class="field">
	                                     <input type="text" class="uit-input" placeholder="Code postal" property="codePost" name="codePost">
	                                 </label>
	                             </div><!-- end section -->
	                         </div> <!-- end .frm-row section -->
	                         
	                         <div class="frm-footer">
		                         <center>
		                        	<button type="submit" class="uit-button btn-blue"> Valider </button>
		                            <button type="reset" class="uit-button"> Annuler </button>
		                         </center>
	                         </div><!-- end .frm-footer section -->  
                         </html:form>
                    </div>
              </div>
        </div>
   </div>
   
    

    <!-- <div class="container">

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
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html:html>