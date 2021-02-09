<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="metier.Abonne"%>
<%@ page import="dao.Dao"%>

    
    
<% request.setAttribute("titre", "Accueil"); %>


<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<!-- Conteneur principal -->
<div class="intro-text left-0 text-center bg-faded p-5 rounded">
	<h2 class="section-heading mb-4">
		<span class="section-heading-upper">Bonjour Admin
		</span> <span class="section-heading-lower"> Voici la liste des abonnés.</span>
	</h2>
</div>

<table class="table table-hover table-bordered table-dark">
	<thead>
		<tr>
			<th scope="col">IdAbonné</th>
			<th scope="col">Nom</th>
			<th scope="col">Prenom</th>
			<th scope="col">Mail</th>
		</tr>
	</thead>
	
	<% for (Abonne abonne2 : Dao.abonnes) { %>
			<tr>
			<td> <%= abonne2.getIdAbonne() %> </td>
			<td> <%= abonne2.getNom() %> </td>
			<td> <%= abonne2.getPrenom() %> </td>
			<td> <%= abonne2.getMail() %> </td> 
			<td><a href="<%=request.getContextPath()%>/supprimerAbo?id=<%=abonne2.getIdAbonne()%>"><i class="fas fa-times"></i></a></td>
			
			</tr> <% } %>
</table>

<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>