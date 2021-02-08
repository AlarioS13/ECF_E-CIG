package metier;

import java.time.LocalDate;

public class Compte {
	private int idCompte;
	private Abonne abonne;
	private String adrLivraison;
	private String adrFacturation;
	private LocalDate dateOuverture;

	public Compte(int idCompte, Abonne abonne, String adrLivraison, String adrFacturation, LocalDate dateOuverture) {
		super();
		this.setAbonne(abonne);
		this.idCompte = idCompte;
		this.adrLivraison = adrLivraison;
		this.adrFacturation = adrFacturation;
		this.dateOuverture = dateOuverture;
	}

	public Compte(int idCompte, Abonne abonne, String adrLivraison, LocalDate dateOuverture) {
		super();
		this.setAbonne(abonne);
		this.idCompte = idCompte;
		this.adrLivraison = adrLivraison;
		this.dateOuverture = dateOuverture;
	}

	public int getIdCompte() {
		return idCompte;
	}

	public void setIdCompte(int idCompte) {
		this.idCompte = idCompte;
	}

	public String getAdrLivraison() {
		return adrLivraison;
	}

	public void setAdrLivraison(String adrLivraison) {
		this.adrLivraison = adrLivraison;
	}

	public String getAdrFacturation() {
		return adrFacturation;
	}

	public void setAdrFacturation(String adrFacturation) {
		this.adrFacturation = adrFacturation;
	}

	public LocalDate getDateOuverture() {
		return dateOuverture;
	}

	public void setDateOuverture(LocalDate dateOuverture) {
		this.dateOuverture = dateOuverture;
	}

	public Abonne getAbonne() {
		return abonne;
	}

	public void setAbonne(Abonne abonne) {
		this.abonne = abonne;
	}

}
