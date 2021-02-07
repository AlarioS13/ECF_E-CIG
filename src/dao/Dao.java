package dao;

import java.util.ArrayList;
import metier.Abonne;
import metier.Employe;
import metier.lignCommande.LignCommande;
import produit.metier.Produit;

public class Dao {

	public static ArrayList<Abonne> abonnes = initA();
	
	// Enrick création d'une arrêt liste employé
	public static ArrayList<Employe>  employes  = initEmployes();
	
	//Laurent création d'une arrayList de lignPanier
	public static ArrayList<LignCommande> lignPaniers = initLignPaniers();
	
	public static ArrayList<Produit>  produits  = initProduits();
	
	// SOFIEN
	public static Abonne getAbonne(String mail, String pw) {
		
		Abonne a = null;
		for (Abonne abonne : Dao.abonnes) {
			if (abonne != null && abonne.getMail() != null && abonne.getPw() != null && abonne.getMail().equals(mail) && abonne.getPw().equals(pw))
				a = abonne;

		}

		return a;
	}
	
	

	public static Abonne getAbonne(String email) {

		Abonne abonne = null;
		Abonne abo = new Abonne(email);
		if (Dao.abonnes.indexOf(abo) >= 0) 
			abonne = Dao.abonnes.get(Dao.abonnes.indexOf(abo));
	
		return abonne;
	}
	
	public static void setAbonne(Abonne abonne) {
		Abonne abo = getAbonne(abonne.getMail());
		if (abo != null) {
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setNom(abonne.getNom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPrenom(abonne.getPrenom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPw(abonne.getPw());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setMail(abonne.getMail());
		}
	}
	
	public static void addAbonne(Abonne abonne) {
		if(abonne != null && abonne.getIdAbonne() != null)
		Dao.abonnes.add(abonne);
	}


	public static ArrayList<Abonne> initA() {
		ArrayList<Abonne> abonnes = new ArrayList<Abonne>();
		Abonne a1 = new Abonne("001", "Dupond", "Jean", "aa","dupond@mail.fr");
		abonnes.add(a1);
		return abonnes;

	}

	public static String printListeAbo() {

		String msg = "<select name=\"idAbonne\" id=\"idAbonne\"> <option value=\"\">-- Choisir un abonné --</option>";
		if (!Dao.abonnes.isEmpty()) {
			for (Abonne abo : Dao.abonnes) {

				msg += "<option value=\""+abo.getIdAbonne()+"\">"+abo.getNom() + " " + abo.getPrenom()+"</option>";

			}
		}
		msg+="</select>";
		return msg;

	}
	
	//ENRICK -  Get employé avec ID
	public static Employe getEmploye(String idEmploye) {
		Employe employe = new Employe(idEmploye);
		return getEmploye(employe);
	}
	// ENRICK - Get employé d'un employé
	public static Employe getEmploye(Employe employe) {
		Employe trouve = null;
		if (employes.contains(employe)) trouve = employes.get(employes.indexOf(employe));
		return trouve;
	}
	// Enrick - Get employé avec email et mot de passe avec vérification des informations.
	public static Employe getEmploye(String email, String mdp) {

		Employe trouve = null;

		if (email != null && mdp != null) {
			for (Employe emplo : Dao.employes) {
				if (emplo != null && email.equals(emplo.getEmailEmploye()) && mdp.equals(emplo.getMdpEmploye())) trouve = emplo;
			}
		}
		return trouve;
	}
	
	// ENRICK - Suppression d'employé
	public static boolean supressEmploye(String idEmploye) {
		boolean ok = false;
		Employe employe = new Employe(idEmploye);
		int index = employes.indexOf(employe);
		if (index != -1) {
			employes.remove(index);
			ok = true;
		}
		return ok;
	}

	// ENRICK - Array list des employés 
	private static ArrayList<Employe> initEmployes() {
		
	ArrayList<Employe> list 	= new ArrayList<Employe>();
	list.add(new Employe("RE12", "Monsieur", "Dupont", "Joe", "12/03/1999", "dupont.joe@mail.com","dupjore12", 2, "24 rue St-Sébastien", 13006, "Marseille"));
	list.add(new Employe("SA01", "Madame", "Dupont", "Jeanne", "21/06/2008","dupont.j@mail.com","dupjesa01", 3, "123 avenue de la Coupe", 13100, "Aix-en-Provence"));
	list.add(new Employe("SA17", "Monsieur", "Machin", "Charles", "10/08/1977","Charles","machasa17", 7, "98 boulevard J. reno", 84120, "Pertuis"));
	list.add(new Employe("SA12", "Monsieur", "Durrant", "John", "30/03/1989","durj@mail.com","durjosa12", 6, "2 cours St-Nicolas", 06006, "Nice"));
	list.add(new Employe("SA45", "Madame", "Truc", "Gin", "10/08/1977","trgin77@email.com","trugisa45", 7, "98 boulevard J. reno", 13028, "La ciotat"));
	list.add(new Employe("RE05", "Madame", "Hello", "Sarrah", "16/10/1997","helloS@mailme.com","helsare05", 1, "123 avenue de la gd Motte", 83170 , "Brignole"));
	return list;
}
	
	
	//Produit
	public static Produit getProduit(int ref) {
		Produit produit = new Produit(ref);
		return getProduit(produit);
	}
	public static Produit getProduit(Produit produit) {
		Produit trouve = null;
		if (produits.contains(produit)) trouve = produits.get(produits.indexOf(produit));
		return trouve;
	}
	
	private static ArrayList<Produit> initProduits() {
		ArrayList<Produit> liste 	= new ArrayList<Produit>();
		liste.add(new Produit(1, "KIT AEGIS X ZEUS SUBOHM GEEKVAPE", 79.90,"aegis.png"));
		liste.add(new Produit(2, "BOX REULEAUX RX 300 CUIR WISMEC", 68.90,"aegis.png"));
		liste.add(new Produit(3, "E-liquide POURED FERRUM CITY 100 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(4, "E-liquide CEREAL 11 FERRUM CITY 100 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(5, "E-liquide GREEN KELLY T-JUICE 50 ML", 9.90,"eliquid.png"));
		liste.add(new Produit(6, "E-liquide LIZZY RASCAL HALCYON HAZE T-JUICE 50 ML", 11.90,"eliquid.png"));
		liste.add(new Produit(7, "E-liquide TEXAN NICOVIP PROMO 3 MG/ML", 1.00,"eliquid.png"));
		liste.add(new Produit(8, "E-liquide DROGO FURIOSA SKINZ 80 ML VAPE47", 27.50,"eliquid.png"));
		liste.add(new Produit(9, "5 RÉSISTANCES PNP VOOPOO", 15.90,"resistance.png"));
		liste.add(new Produit(10, "3 RÉSISTANCES GT CORE VAPORESSO", 12.90,"resistance.png"));
		return liste;
	}

	
	
	
	
	//LAURENT - Array list des paniers
	
		
	
	private static ArrayList<LignCommande> initLignPaniers () {
	
		ArrayList<LignCommande> listProd = new ArrayList<LignCommande>();
		
		
		return listProd;
		
	}



	public static boolean supressionLignP(int ref) {
		boolean ok = false;
		Produit produit = new Produit(ref);
		int index = produits.indexOf(produit);
		if (index != -1) {
			LignCommande.remove(index);
			ok = true;
			// TODO : si abonne est celui de la session, remettre à jour la session
		}
		return ok;
	}

}