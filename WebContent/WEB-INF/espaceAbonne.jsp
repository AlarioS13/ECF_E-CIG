
<%@ page import="dao.Dao"%>
<%@ page import="metier.Abonne" %>


<% request.setAttribute("titre", "Votre espace"); %>

<!-- head bootstrap de la page -->
<%@ include file="/WEB-INF/include/head.jsp" %>

 <!-- navbar bootstrap de la page -->
<%@ include file="/WEB-INF/include/navbar.jsp" %>


<%
Abonne abonneComplet  = null;
String pw = null;
String prenom = null;
if (abonne != null) {
	abonneComplet = Dao.getAbonneById(abonne.getMail());
	pw = abonneComplet.getPw();
	prenom = abonneComplet.getPrenom();
}


%>

<section class="page-section cta">
	<div class="container">
		<div class="row">
			<div class="mx-auto">
				<div class="cta-inner text-center rounded">
					<h2 class="section-heading mb-5">
						<span class="section-heading-upper">Votre</span> <span
							class="section-heading-lower">Espace Abonné</span>
					</h2>

					<div>
						<!-- div formulaire -->


						<form action="<%=request.getContextPath()%>/modifAbo"
							method="post">
							<div class="row">
								<div class="form-group col-4">
									<label for="name">Prénom</label> <input type="text"
										class="form-control" id="name" name="name"
										value="<%=prenom%>">
								</div>
								<div class="form-group col-4">
									<label for="lastName">Nom</label> <input type="text" readonly
										class="form-control" id="lastName" name="lastName"
										value="<%=abonne.getNom()%>">
								</div>
								<div class="form-group col-4">
									<label for="password-field">Mot de passe</label> 
									<input id="password-field" type="password" class="form-control"
										name="password" value="<%= pw %>"> 
										<span toggle="#password-field"
										class="far fa-eye field-icon toggle-password text-body"></span>

								</div>
								<div class="form-group col-4">
									<label for="mail">Mail</label> <input type="email"
										class="form-control" id="mail" name="mail"
										value="<%= abonne.getMail() %>">
								</div>
							</div>


							<br>
							<button type="submit" class="btn btn-primary">Modifier</button>
						</form>


					</div>
					<!-- fin div formulaire -->

				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file="/WEB-INF/include/footer.jsp" %>