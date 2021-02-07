package webApp.accesPanier;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import metier.Abonne;

/**
 * Servlet implementation class accesPanier
 */
@WebServlet("/accesPanier")
public class accesPanier extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private RequestDispatcher disp;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accesPanier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
String path = request.getPathInfo();
		
		System.out.println("je suis dans controleur abonne");
		if (path == null || path =="/") 					doTricheurBis(request,response);
		else if (path.startsWith("/monPanier"))				doPanier(path,request,response);
		else if (path.startsWith("/supprimer"))				doSupprim(path, request, response);
		else if (path.startsWith("/modifierPanier"))		doModifier(path, request,response);
		else { 
			request.setAttribute("message", "Vous avez tripatouill&eacute; l'url!!! ");
			
			//changer la page d'erreur
			RequestDispatcher disp = request.getRequestDispatcher("/vue/erreur/erreurLogin.jsp");
			disp.forward(request, response);			
		}
	}

	private void doModifier(String path, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chemin = path;
		disp = request.getRequestDispatcher("/media/abonne/modifierPanier");
		disp.forward(request,response);

	}

	private void doSupprim(String path, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (request.getMethod() == "GET") {
			request.setAttribute("message", "Url invalide !!");
			request.getRequestDispatcher(this.getServletContext().getInitParameter("erreurLogin"));
		}
		else {
			System.out.println("Je suis dans supprimer abonne Post");
			request.setAttribute("message", "");

			// recuperation de la session
			HttpSession session = request.getSession(true);
			Abonne abonneSession = (Abonne) session.getAttribute("abonne");

			// redirection vers pageError si l'abonne n'est pas connecté
			try {
				Objects.requireNonNull(abonneSession);
				// TODO : Datas en dur !!! Il faut mettre en place une gestion du profil utilisateur
				if (!"root".equals(abonneSession.getNom())) throw new NullPointerException();

				// recuperation des donnees
				String idAbonne		= request.getParameter("sel").strip();
				int ref 			= Integer.parseInt(request.getParameter("sel").strip());
				// suppression de l'abonne dans la liste
				boolean ok = Dao.supressionLignP(ref);

				//7 - rediriger vers le formulaire
				if (ok) request.setAttribute("message", "L'abonne " + idAbonne + " a été supprim&eacute;");
				else	request.setAttribute("message", "L'abonne "+ idAbonne + " n'existe pas");

				RequestDispatcher disp = request.getRequestDispatcher("/monPanier");
				disp.forward(request, response);
			}
			catch (NullPointerException e) {
				request.setAttribute("message", "Vous n'etes pas un administrateur. Acc&egrave;s impossible.");


				// ServletContext context 	= this.getServletContext() ;
				String chemin = this.getServletContext().getInitParameter("erreurLogin");


				RequestDispatcher disp = request.getRequestDispatcher(chemin);
				disp.forward(request, response);
			}
		}

		
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
