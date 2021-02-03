package dao;

import java.util.ArrayList;
import metier.Abonne;

public class Dao {

	public static ArrayList<Abonne> abonnes = initA();

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
	
	

}