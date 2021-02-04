<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setAttribute("titre", "quesaco"); %>

<%@ include file="/WEB-INF/include/head.jsp" %>

<%@ include file="/WEB-INF/include/navbar.jsp" %>
<h1 class="essai_L">C'est quoi une cigarette électronique?</h1>
<div class="bloc">
	<div class="wrap_l">
		<div class="un_L">
			<p>La première fois que l'on voit cet appareil on peut se demander c'est quoi se gros truc? <br>
			Ca à l'air compliqué à utiliser, donc pourquoi je ne continurai pas tout simplement à fumer?</p>
		</div>
		<div class="deux_L">
		<img src="<%=request.getContextPath()%>/img/ecigcomplique.jpg" alt="Ecigarette complexe" class="arrondi">
		</div>	
	</div>	
		
	<div class="wrap2_l">
		<div class="trois_L">
			<p>Lorsque l'on regarde de plus près une ecig, on remarque qu'elle est composée de plusieurs éléments.<br>
			En effet on distingue trois partie principales dans une ecig :</p>
				<ul>
					<li>L'atomiseur</li>
					<li>La box</li>
					<li>La batterie</li>
				</ul>
			
		</div>
	
		<div class="quatre_L">
			<img src="<%=request.getContextPath()%>/img/fonctionnement.png" alt= "les différentes parties d'une ecig" class="arrondi">
		</div>
	</div>
	<div class="wrap_l">
		<div class="un_L">
			<p>L'atomiseur est la partie qui va contenir le liquide que vous allez vaporiser.<br>
			Celui-ci est composé par :</p>
				<ul>
					<li>une cuve de remplissage</li>
					<li>une résistance</li>
					<li>un embout par lequel aspirer</li>
				</ul>
			
		</div>
		<div class="deux_L">
			<img src="<%=request.getContextPath()%>/img/atoeclat.jpg" alt="Atomiseur éclaté" class="arrondi">
	
		</div>
	</div>
	<div class="wrap2_l">
		<div class="trois_L">
			<p>La box est la partie sur laquelle vous allez installer votre atomiseur.</p>
			<p>C'est elle qui va vous permettre de régler la puissance de vaporisation.</p>
			<p>Elle est d'une grande importance car d'une part c'est elle que vous allez avoir en main,<br>
			et d'autre part, elle va transmettre l'énergie dans votre atomiseur.</p>
		</div>
		<div class="quatre_L">
			<img src="<%=request.getContextPath()%>/img/aegisx.png" alt="Box aegis X" class="arrondi">
	
		</div>
	
	</div>
	<div class="wrap_l">
		<div class="un_L">
			<p>L'accumulateur est en quelque sorte la pile de votre ecig. C'est lui qui va fournir l'énergie.<br>
			Par contre il est aussi la partie ou il faudra faire très attention.<br>
			En effet il faudra le choisir en fonction de la puissance de vape désirée pour ne pas risquer de surchage.<br>
			Par ailleur il faudra aussi vérifier que le wrapp n'est pas abimé pour ne pas avoir de court circuit.</p>
			
		</div>
		<div class="deux_L">
			<img src="<%=request.getContextPath()%>/img/accu.jpg" alt="accumulateur pour ecig" class="arrondi">
	
		</div>
	
	</div>
	<div class="wrap2_l">
		<div>
			<p>Et voila, maintenant vous savez ce qu'est une ecig, qu'est-ce que vous attendez pour franchir le pas?<br>
			Venez voir nos produits et peut être que vous vous laisserez tenter.</p>  
		</div>
	</div>
</div>
 <%@ include file="/WEB-INF/include/footer.jsp" %>