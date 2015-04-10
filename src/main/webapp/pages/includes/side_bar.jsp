<%@ page import="java.util.Date"%>
<p class="lead"> At Versailles's Shop</p>
<%! Date dateDuJour; %>
<% dateDuJour = new Date();%>
Nous sommes le  : <%= dateDuJour %><br><br>
<div class="list-group">
    <a href="#" class="list-group-item">Femmes</a>
    <a href="#" class="list-group-item">Hommes</a>
    <a href="#" class="list-group-item">Enfants</a>
</div>