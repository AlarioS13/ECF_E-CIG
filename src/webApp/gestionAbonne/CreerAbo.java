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
 * Servlet implementation class CreerAbo
 */
@WebServlet("/creerAbo")
public class CreerAbo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String mail	= request.getParameter("email").strip();
		String pw	= request.getParameter("pw").strip();
		String nom	= request.getParameter("name").strip();
		
		Abonne abo = new Abonne();
		abo.setNom(nom);
		abo.setPw(pw);
		abo.setMail(mail);
		abo.setIdAbonne("000");
		
		Dao.addAbonne(abo);
		
		response.sendRedirect("e-cig/accueil");

		
	}

}
