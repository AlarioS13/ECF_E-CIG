package dao;

import java.util.ArrayList;
import metier.Abonne;
import metier.Employe;

public class Dao {

	public static ArrayList<Abonne> abonnes = initA();
	
	// Enrick cr�ation d'une arr�t liste employ�
	public static ArrayList<Employe>  employes  = initEmployes();
	// SOFIEN
	
	public static Abonne getAbonneById(String id) {

		Abonne abonne = null;
		Abonne abo = new Abonne();
		abo.setIdAbonne(id);
		if (Dao.abonnes.indexOf(abo) >= 0) 
			abonne = Dao.abonnes.get(Dao.abonnes.indexOf(abo));
	
		return abonne;
	}
	public static void setAbonneWithId(Abonne abonne) {
		Abonne abo = getAbonneById(abonne.getIdAbonne());
		if (abo != null) {
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setNom(abonne.getNom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPrenom(abonne.getPrenom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPw(abonne.getPw());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setMail(abonne.getMail());
		}
	}
	
	public static void setAbonneWithMail(Abonne abonne) {
		Abonne abo = getAbonneByMail(abonne.getMail());
		if (abo != null) {
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setNom(abonne.getNom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPrenom(abonne.getPrenom());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setPw(abonne.getPw());
			Dao.abonnes.get(Dao.abonnes.indexOf(abo)).setMail(abonne.getMail());
		}
	}
	
	public static Abonne getAbonneByMail(String mail, String pw) {
		
		Abonne a = null;
		for (Abonne abonne : Dao.abonnes) {
			if (abonne != null && abonne.getMail() != null && abonne.getPw() != null && abonne.getMail().equals(mail) && abonne.getPw().equals(pw))
				a = abonne;

		}

		return a;
	}
	
	public static Abonne getAbonneByMail(String email) {

		Abonne abonne = null;
		Abonne abo = new Abonne(email);
		if (Dao.abonnes.indexOf(abo) >= 0) 
			abonne = Dao.abonnes.get(Dao.abonnes.indexOf(abo));
	
		return abonne;
	}
	

	
	public static void addAbonne(Abonne abonne) {
		if(abonne != null && abonne.getIdAbonne() != null)
		Dao.abonnes.add(abonne);
	}


	public static ArrayList<Abonne> initA() {
		ArrayList<Abonne> abonnes = new ArrayList<Abonne>();
		Abonne a1 = new Abonne("001", "Dupond", "Jean", "aa","dupond@mail.fr");
		Abonne a2 = new Abonne("002", "Dupon", "Jean", "aa","dupon@mail.fr");
		Abonne a3 = new Abonne("003", "Dupont", "Jean", "aa","dupont@mail.fr");
		Abonne a4 = new Abonne("004", "Duponk", "Jean", "aa","duponk@mail.fr");

		abonnes.add(a1);
		abonnes.add(a2);
		abonnes.add(a3);
		abonnes.add(a4);
		return abonnes;

	}

	public static String printListeAbo() {

		String msg = "<select name=\"idAbonne\" id=\"idAbonne\"> <option value=\"\">-- Choisir un abonn� --</option>";
		if (!Dao.abonnes.isEmpty()) {
			for (Abonne abo : Dao.abonnes) {

				msg += "<option value=\""+abo.getIdAbonne()+"\">"+abo.getNom() + " " + abo.getPrenom()+"</option>";

			}
		}
		msg+="</select>";
		return msg;

	}
	
	//ENRICK -  Get employ� avec ID
	public static Employe getEmploye(String idEmploye) {
		Employe employe = new Employe(idEmploye);
		return getEmploye(employe);
	}
	// ENRICK - Get employ� d'un employ�
	public static Employe getEmploye(Employe employe) {
		Employe trouve = null;
		if (employes.contains(employe)) trouve = employes.get(employes.indexOf(employe));
		return trouve;
	}
	// Enrick - Get employ� avec email et mot de passe avec v�rification des informations.
	public static Employe getEmploye(String email, String mdp) {

		Employe trouve = null;

		if (email != null && mdp != null) {
			for (Employe emplo : Dao.employes) {
				if (emplo != null && email.equals(emplo.getEmailEmploye()) && mdp.equals(emplo.getMdpEmploye())) trouve = emplo;
			}
		}
		return trouve;
	}
	
	// ENRICK - Suppression d'employ�
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

	// ENRICK - Array list des employ�s 
	private static ArrayList<Employe> initEmployes() {
		
	ArrayList<Employe> list 	= new ArrayList<Employe>();
	list.add(new Employe("RE12", "Monsieur", "Dupont", "Joe", "12/03/1999", "dupont.joe@mail.com","dupjore12", 2, "24 rue St-S�bastien", 13006, "Marseille"));
	list.add(new Employe("SA01", "Madame", "Dupont", "Jeanne", "21/06/2008","dupont.j@mail.com","dupjesa01", 3, "123 avenue de la Coupe", 13100, "Aix-en-Provence"));
	list.add(new Employe("SA17", "Monsieur", "Machin", "Charles", "10/08/1977","Charles","machasa17", 7, "98 boulevard J. reno", 84120, "Pertuis"));
	list.add(new Employe("SA12", "Monsieur", "Durrant", "John", "30/03/1989","durj@mail.com","durjosa12", 6, "2 cours St-Nicolas", 06006, "Nice"));
	list.add(new Employe("SA45", "Madame", "Truc", "Gin", "10/08/1977","trgin77@email.com","trugisa45", 7, "98 boulevard J. reno", 13028, "La ciotat"));
	list.add(new Employe("RE05", "Madame", "Hello", "Sarrah", "16/10/1997","helloS@mailme.com","helsare05", 1, "123 avenue de la gd Motte", 83170 , "Brignole"));
	return list;
}
	
	

}