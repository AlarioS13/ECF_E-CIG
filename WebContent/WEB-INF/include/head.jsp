<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<% String titre = "Titre non défini";
  if (request.getAttribute("titre") != null) titre = (String)request.getAttribute("titre");
  %>


<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Titre dynamique -->
<title><%=titre%></title>
<meta name="description" content="Site en ligne de vente de cigarette électronique et E-liquide et d'accesoires de cigarette électronique. Votre nouvelle boutique virtuelle pour acheter votre produits de vapotage.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
<!-- owl carousel-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.black.css"
	id="theme-stylesheet">
<!-- Leaflet CSS - For the map-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.css">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>