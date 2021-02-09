package metier;

public class Abonne {

	private String 		idAbonne;
	private String 		nom;
	private String 		prenom;
	private String      pw;
	private String      mail;

	public Abonne(String mail) {
		this.mail 	= mail;
	}
	public Abonne() {

	}

	public Abonne(String idAbonne, String nom, String prenom, String pw) {
		this.idAbonne 	= idAbonne;
		this.nom 		= nom;
		this.prenom 	= prenom;
		this.pw         = pw;
	}
	public Abonne(String idAbonne, String nom, String prenom, String pw,String mail) {
		this.idAbonne 	= idAbonne;
		this.nom 		= nom;
		this.prenom 	= prenom;
		this.pw         = pw;
		this.mail       = mail;
	}


	public String getIdAbonne() {
		return idAbonne;
	}
	public String getNom() {
		return nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setIdAbonne(String idAbonne) {
		this.idAbonne = idAbonne;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Override
	public boolean equals(Object obj) {
		boolean retour = false;
		if (obj != null && obj instanceof Abonne) {
			Abonne abonne = (Abonne)obj;
			retour = abonne.getMail().equals(this.mail);
			if (!retour) {
				retour = abonne.getIdAbonne().equals(this.idAbonne);
			};
		}
		return retour;
	}

	@Override
	public String toString() {
		return "Abonne [" + idAbonne + ", " + nom + ", " + prenom + "]";
	}







}
