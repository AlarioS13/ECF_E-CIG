<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page isErrorPage="true" %>

<% request.setAttribute("titre", "Page d'erreur Data"); %>
    
<!-- head bootstrap de la page -->
<jsp:include page="/WEB-INF/include/head.jsp" />

 <!-- navbar bootstrap de la page -->
<jsp:include page="/WEB-INF/include/navbar.jsp" />

<section class="page-section clearfix">
	<div class="container">
		<%
				String message = null;
			if (request.getAttribute("message") != null) {
				message = (String) request.getAttribute("message");
			} %>

		<div class="intro-text left-0 text-center bg-faded p-5 rounded">
			<h2 class="section-heading mb-5">
				<span class="section-heading-upper text-warning">OUPS ! Erreur Interne ! </span>
				<br />
				<p class="section-heading-lower">Notre serveur semble être enfumé!<br /> Veuillez nous excusez pour la gène occasionnée!</p>
				<br />
				<p>Veuillez retourner à <a href="<%=request.getContextPath()%>/e-cig/">l'accueil</a></p>
			</h2>
		</div>
	</div>


</section>

<!--  Footer de la page -->
<jsp:include page="/WEB-INF/include/footer.jsp" />