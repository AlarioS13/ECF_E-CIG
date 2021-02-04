package metier;

public class Employe {
	
	private String idEmploye; 
	private String civEmploye;
	private String nomEmploye;
	private String prenomEmploye;
	private String dateNaissEmploye;
	private String emailEmploye;
	private String mdpEmploye;
	private Integer anciennete;
	private String adressRueEmploye;
	private Integer cdpEmploye;
	private String nomVille;

	public Employe() {
	}
	
	public Employe (String idEmploye) {
		this.idEmploye = idEmploye;
		this.nomEmploye = "inconnu";		
	}
	


	public Employe(String idEmploye, String civEmploye, String nomEmploye, String prenomEmploye,
			String dateNaissEmploye, String emailEmploye, String mdpEmploye, Integer anciennete,
			String adressRueEmploye, Integer cdpEmploye, String nomVille) {
		this.idEmploye = idEmploye;
		this.civEmploye = civEmploye;
		this.nomEmploye = nomEmploye;
		this.prenomEmploye = prenomEmploye;
		this.dateNaissEmploye = dateNaissEmploye;
		this.emailEmploye = emailEmploye;
		this.mdpEmploye = mdpEmploye;
		this.anciennete = anciennete; // En faire une propriété pour en faire une donnée calculé
		this.adressRueEmploye = adressRueEmploye;
		this.cdpEmploye = cdpEmploye;
		this.nomVille = nomVille;
	}
	

	public String getIdEmploye() {
		return idEmploye;
	}

	public String getCivEmploye() {
		return civEmploye;
	}

	public String getNomEmploye() {
		return nomEmploye;
	}

	public String getPrenomEmploye() {
		return prenomEmploye;
	}

	public String getDateNaissEmploye() {
		return dateNaissEmploye;
	}

	public String getEmailEmploye() {
		return emailEmploye;
	}

	public String getMdpEmploye() {
		return mdpEmploye;
	}

	public Integer getAnciennete() {
		return anciennete;
	}

	public String getAdressRueEmploye() {
		return adressRueEmploye;
	}

	public Integer getCdpEmploye() {
		return cdpEmploye;
	}

	public String getNomVille() {
		return nomVille;
	}

	public void setIdEmploye(String idEmploye) {
		this.idEmploye = idEmploye;
	}

	public void setCivEmploye(String civEmploye) {
		this.civEmploye = civEmploye;
	}

	public void setNomEmploye(String nomEmploye) {
		this.nomEmploye = nomEmploye;
	}

	public void setPrenomEmploye(String prenomEmploye) {
		this.prenomEmploye = prenomEmploye;
	}

	public void setDateNaissEmploye(String dateNaissEmploye) {
		this.dateNaissEmploye = dateNaissEmploye;
	}

	public void setEmailEmploye(String emailEmploye) {
		this.emailEmploye = emailEmploye;
	}

	public void setMdpEmploye(String mdpEmploye) {
		this.mdpEmploye = mdpEmploye;
	}

	public void setAnciennete(Integer anciennete) {
		this.anciennete = anciennete;
	}

	public void setAdressRueEmploye(String adressRueEmploye) {
		this.adressRueEmploye = adressRueEmploye;
	}

	public void setCdpEmploye(Integer cdpEmploye) {
		this.cdpEmploye = cdpEmploye;
	}

	public void setNomVille(String nomVille) {
		this.nomVille = nomVille;
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean retour = false;
		if (obj != null && obj instanceof Employe) {
			Employe employe = (Employe)obj;
			retour = employe.getIdEmploye().equals(this.idEmploye) ;
		}
		return retour;
	}

	@Override
	public String toString() {
		return "Employe [idEmploye : " + idEmploye + ", civEmploye : " + civEmploye + ", nomEmploye : " + nomEmploye
				+ ", prenomEmploye : " + prenomEmploye + ", dateNaissEmploye : " + dateNaissEmploye
				+ ", emailEmploye : " + emailEmploye + ", mdpEmploye : " + mdpEmploye + ", anciennete : " + anciennete
				+ ", adressRueEmploye : " + adressRueEmploye + ", cdpEmploye : " + cdpEmploye + ", nomVille : "
				+ nomVille + "]";
	}
}