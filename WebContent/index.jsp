<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    
    
<% request.setAttribute("titre", "Accueil"); %>

<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>

<!-- Conteneur principal de la page d'acceuil -->
<%@ include file="/WEB-INF/include/bodyIndex.jsp" %>

<!--  Footer de la page -->
<%@ include file="/WEB-INF/include/footer.jsp" %>