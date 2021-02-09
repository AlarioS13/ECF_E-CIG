package webApp.gestionAbonne;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import metier.Abonne;

/**
 * Servlet implementation class ModifAbo
 */
@WebServlet("/modifAbo")
public class ModifAbo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String prenom	= request.getParameter("name").strip();
		String nom	= request.getParameter("lastName").strip();
		String pw	= request.getParameter("password").strip();
		String mail = request.getParameter("mail").strip();
		
		Abonne abonneSession = (Abonne) request.getSession().getAttribute("abonne");
		// Je construit mon nouvel abonné
		Abonne abonne = new Abonne (abonneSession.getIdAbonne(), nom, prenom, pw);
		abonne.setMail(mail);
		
		// Je modifie l'abonné EN DAO dont l'id est le meme
		Dao.setAbonneWithMail(abonne);
		
		// J'actualise l'abonné en session 
//		abonneSession.setNom(abonne.getNom());
//		abonneSession.setPrenom(abonne.getPrenom());
//		HttpSession session = request.getSession(false);	
//		session.setAttribute("abonne", abonneSession);
		
		response.sendRedirect("e-cig/");


		
	}

}
