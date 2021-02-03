package webApp.identification;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import metier.Abonne;

/**
 * Servlet implementation class GererIdentification
 */
@WebServlet("/gererIdentification")
public class GererIdentification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Je créé un objet session
		HttpSession session = request.getSession();	

		// Je récupère les valeurs entrées dans le formulaire
		String mail=null;
		if (!request.getParameter("email").isBlank()) mail = request.getParameter("email").strip() ;
		String pw=null;
		if (!request.getParameter("pw").isBlank()) pw = request.getParameter("pw").strip() ;		

		// Je vérifie s'il existe dans la dao et s'il existe je le recup
		Abonne a = null;
		if (Dao.getAbonne(mail, pw) != null) {
			a = Dao.getAbonne(mail, pw);
			// Je fais un abonné qui n'a pas le password dans son contenu
			Abonne abosess= new Abonne(a.getMail());
			abosess.setNom(a.getNom());
			// Je l'envoie en session
			session.setAttribute("abonne", abosess);
			response.sendRedirect("e-cig/");
		// Sinon j'affiche une page d'erreur
		} else {
			request.setAttribute("message", "Cet utilisateur et mot de passe n'existent pas");
			String chemin = this.getServletContext().getInitParameter("errorPage");
			getServletContext().getRequestDispatcher( chemin ).forward( request, response );

		}


	}
}


