package metier;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import webApp.exception.RefInvalidException;


/**
 * 
 * @author Enrick
 * <p><b>Description : </b>Class metier Employe </p>
 *
 */

public class Employe {
	
	// déclaration des variables utiles à la la class mère Employe	
	private 	String				idEmploye;
	private		String				refEmploye;
	private		String				civEmploye;
	private 	String				nomEmploye;
	private 	String				prenomEmploye;
	private 	LocalDate			dateNaissEmploye;
	private 	String				emailEmploye;
	private 	String				mdpEmploye;
	private 	String 				numTelEmploye;
	private 	EmployeCoordonnees 	coordonnee;
	

	// Constructeur par défaut, utilisation exclusif dans le useBean:
	public Employe() {
	}
	
	/**
	 * <b>Constructeur de la class Employe par défaut :</b>
	 * @param idEmploye : 
	 * 					Identifiant de l'employé.
	 * @param nomEmploye : 
	 * 					Nom de famille de l'employé.
	 * @param coordonnee  :
	 * 					Coordonnée de l'employé sous forme (libellé de la rue, cdp, nom de la ville).
	 */
	// Constructeur avec Id, pour modification et suppression par ID:
	public Employe (String idEmploye) {
		this.idEmploye = idEmploye;
		this.nomEmploye = "inconnu";
		this.dateNaissEmploye = LocalDate.parse("1990-01-12");
		this.coordonnee = new EmployeCoordonnees("inconnue", 12345, "inconnue"); // coordonnées avec des valeurs! 
	}


	/**
	 * <b>Constructeur de la class Employe avec paramètre sauf refEmploye :</b>
	 * <p><b>NOTA : </b>RefEmploye correspond à la référence de l'employé en fonction de statut.</p>
	 * @param idEmploye : identifiant de l'empoyé.
	 * @param civEmploye : civilité de l'employé.
	 * @param nomEmploye : nom de l'employé.
	 * @param prenomEmploye : prénom de l'employé.
	 * @param dateNaissEmploye : date de naissance de l'employé (format : jj-mm-aaaa).
	 * @param emailEmploye : émail de l'employé.
	 * @param mdpEmploye : mot de passe de l'employé
	 * @param numTelEmploye : numéro de téléphone de l'employé
	 * @param coordonnee : coordonnée de l'employé sous forme (libellé de la rue, cdp, nom de la ville). 
	 */
	// Constructeur standard avec initialisation des champs
	public Employe(String idEmploye, String civEmploye, String nomEmploye, String prenomEmploye,
			LocalDate dateNaissEmploye, String emailEmploye, String mdpEmploye, String numTelEmploye,
			EmployeCoordonnees coordonnee) {
		this.idEmploye = idEmploye;
		setRefEmploye(creerRef());
		this.civEmploye = civEmploye;
		this.nomEmploye = nomEmploye;
		this.prenomEmploye = prenomEmploye;
		setDateNaissEmploye(dateNaissEmploye);
		this.emailEmploye = emailEmploye;
		this.mdpEmploye = mdpEmploye;
		this.numTelEmploye = numTelEmploye;
		this.coordonnee = coordonnee;
	}
	
	/**
	 * <b>Contructeur de la Class Employé :</b>
	 * <p>Ajout du paramètre refEmploye.</p>
	 * @param idEmploye  		: identifiant de l'employé.
	 * @param refEmploye 		: référence de l'employé dans la société.
	 * @param civEmploye 		: civilité de l'employé.
	 * @param nomEmploye 		: nom de l'employé.
	 * @param prenomEmploye 	: prénom de l'employé.
	 * @param dateNaissEmploye 	: date de naissance de l'employé (format : jj-mm-aaaa).
	 * @param emailEmploye 		: adresse mail de l'employé.
	 * @param mdpEmploye 		: mot de passe de l'employé
	 * @param numTelEmploye 	: numéro de téléphone de l'employé.
	 * @param coordonnee 		: coordonnée de l'employé sous forme (libellé de la rue, cdp, nom de la ville).
	 */
	public Employe(String idEmploye, String refEmploye, String civEmploye, String nomEmploye,
			String prenomEmploye, LocalDate dateNaissEmploye, String emailEmploye,
			String numTelEmploye, EmployeCoordonnees coordonnee){
		this.idEmploye = idEmploye;
		setRefEmploye(creerRef());
		this.civEmploye = civEmploye;
		this.nomEmploye = nomEmploye;
		this.prenomEmploye = prenomEmploye;
		this.dateNaissEmploye = dateNaissEmploye;
		this.emailEmploye = emailEmploye;
		this.numTelEmploye = numTelEmploye;
		this.coordonnee = coordonnee;
	}
	
	/**
	 * <b>Description de la méthode creerRef()</b>
	 * <p>Cette méthode permet de créer la référence d'un employé en fonction de son statut.</p>
	 * <p>Elle ne prend aucun paramètre en entrée et retourn le statut de l'employé. Si celui-ci
	 * n'est n'y un Responsable, ni un Salarié, le statut de l'employé commencera par la chaîne de caractère
	 * 'EM'.</p>
	 * <p>Cette méthode ne prend aucun paramètre en entrée. Et affiche en sortie le statut de l'employé.</p>
	 * <p>Condition : le nom de l'employé ne doit pas être null, et sa taille doit être supérieur à 1.</p>
	 * <p> @return :  statut (une chaîne de caratère concaténée avec la chaine de caractère 'EM' 
	 * 	+ Les 2 premières initiales du nom de famille de l'empoyé
	 * 	+ le chiffre 0
	 * 	+ le mois de naissance de l'employé).</p>
	 * @throws RefInvalidException 
	 **/
	// Méthode créant la référence de l'employé en fonction de son statut
	public String creerRef(){
		String statut = null;
		if (getNomEmploye() != null && getNomEmploye().length() > 1) 
			statut = "EM" + getNomEmploye().toUpperCase().trim().substring(0,2) + 0 + getDateNaissEmploye().getMonthValue();
		else if(getNomEmploye()==null || getNomEmploye().length()<1 || getDateNaissEmploye()==null)
			statut = "EMaaa01";
		return statut;
	}
	
	// GETTERS
	public String getIdEmploye() {
		return idEmploye;
	}
	
	public String getRefEmploye() {
		return refEmploye;
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

	public LocalDate getDateNaissEmploye() {
		return dateNaissEmploye;
	}

	public String getEmailEmploye() {
		return emailEmploye;
	}

	public String getMdpEmploye() {
		return mdpEmploye;
	}

	public String getNumTelEmploye() {
		return numTelEmploye;
	}

	public EmployeCoordonnees getCoordonnee() {
		return coordonnee;
	}
	
	// SETTERS	
	public void setIdEmploye(String idEmploye) {
		this.idEmploye = idEmploye;
	}

	protected void setRefEmploye(String refEmploye) {
		this.refEmploye = refEmploye;
	}

	public void setCivEmploye(String civEmploye) {
		// contrôle
		if(civEmploye.equals("Mr") || civEmploye.equals("Mme"))		this.civEmploye = civEmploye;
	}

	public void setNomEmploye(String nomEmploye) {
		if(nomEmploye==null)	this.nomEmploye = "inconnue";
		else					this.nomEmploye = nomEmploye;
	}

	public void setPrenomEmploye(String prenomEmploye) {
		this.prenomEmploye = prenomEmploye;
	}
	
	public void setDateNaissEmploye(LocalDate dateNaissEmploye) {
		if(dateNaissEmploye==null) 	this.dateNaissEmploye = LocalDate.parse("1981-01-01");
		else						this.dateNaissEmploye = dateNaissEmploye;
	}

	public void setEmailEmploye(String emailEmploye) {
		this.emailEmploye = emailEmploye;
	}
	
	public void setMdpEmploye(String mdpEmploye) {
		this.mdpEmploye = mdpEmploye;
	}
	
	// contrôle et paramétrage du numéros de téléphone au format FR de type ##.##.##.##.##
	public void setNumTelEmploye(String numTelEmploye) {
	    String regex = ("^([0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2})$");
	    Pattern pattern = Pattern.compile(regex);
	    Matcher matcher = pattern.matcher(numTelEmploye);
	    if (matcher.matches()) {
	    	this.numTelEmploye = numTelEmploye;
	    } else {
	    	this.numTelEmploye = ("06.11.11.11.11");
	    }
	}

	public void setCoordonnee(EmployeCoordonnees coordonnee) {
		this.coordonnee = coordonnee;
	}

	// Redéfinition de la méthode EQUALS, pour vérification entre deux
	// objets de type Employé par leur identifiants:
	@Override
	public boolean equals(Object obj) {
		boolean retour = false;
		if (obj != null && obj instanceof Employe) {
			Employe employe = (Employe)obj;
			retour = employe.getIdEmploye().equals(this.idEmploye) ;
		}
		return retour;
	} 
	
	// Méthode toString surchargée pour affichage (uniquement pour des tests, ou autre )
	@Override
	public String toString() {
		return "Employé N° : " + idEmploye + "\n réf.: "+refEmploye+ "\n civilité : " + civEmploye +
				"\n nom de l'Employe : " + nomEmploye
				+ ", prenom de l'employe : " + prenomEmploye + 
				"\n date de Naissance : " + dateNaissEmploye.format(DateTimeFormatter.ofPattern("dd/MM/yyyy",Locale.FRENCH))
				+ "\n emailEmploye : " + emailEmploye + ", mdpEmploye : " + mdpEmploye + "\n numTelEmploye : "
				+ numTelEmploye + "\n coordonnee : " + coordonnee+"\n";
	}
}