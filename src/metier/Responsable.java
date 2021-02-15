package metier;

import java.time.LocalDate;

	
public class Responsable extends Employe {
	

	public Responsable() {
	}
	

	/**
	 * @param idEmploye
	 */
	public Responsable(String idEmploye) {
		super(idEmploye);
	}
	
	
	/**
	 * <b>Constrcteur Responsable avec paramètre </b>
	 * 
	 * @param civEmploye
	 * @param nomEmploye
	 * @param prenomEmploye
	 * @param dateNaissEmploye
	 * @param emailEmploye
	 * @param mdpEmploye
	 * @param numTelEmploye
	 * @param coordonnee
	 */
	public Responsable(String idEmploye, String civEmploye, String nomEmploye, String prenomEmploye,
			LocalDate dateNaissEmploye, String emailEmploye, String mdpEmploye, String numTelEmploye,
			EmployeCoordonnees coordonnee) {
		super(idEmploye, civEmploye, nomEmploye, prenomEmploye, dateNaissEmploye, emailEmploye,
				mdpEmploye, numTelEmploye, coordonnee);
		setRefEmploye(creerRef());
	}
	

	/**
	 * <b>Construcuteur du Responsable avec paramètre référence en plus.
	 * @param refEmploye
	 * @param civEmploye
	 * @param nomEmploye
	 * @param prenomEmploye
	 * @param dateNaissEmploye
	 * @param emailEmploye
	 * @param numTelEmploye
	 * @param coordonnee
	 */
	public Responsable(String idEmploye, String refEmploye, String civEmploye, String nomEmploye, String prenomEmploye,
			LocalDate dateNaissEmploye, String emailEmploye, String numTelEmploye, EmployeCoordonnees coordonnee){
		super(idEmploye, refEmploye, civEmploye, nomEmploye, prenomEmploye, dateNaissEmploye, emailEmploye, numTelEmploye,
				coordonnee);
	}

	/**
	 * <b>Méthode creerRef()</b>
	 *<p>Permet de créer le référencement dans la société d'un salarié.</p>
	 */
	// Méthode créant la référence de l'employé en fonction de son statut
	public String creerRef(){
		String statut = null;
		if (getNomEmploye() != null && getNomEmploye().length() > 1) 
			statut = "RE" + getNomEmploye().toLowerCase().trim().substring(0,2) + 0 + getDateNaissEmploye().getMonthValue();
		else if(getNomEmploye()==null || getNomEmploye().length()<1 || getDateNaissEmploye()==null)
			statut = "REaaa00";
		return statut;
	}

	@Override
	public String toString() {
		return "Responsable : "+super.toString();
	}	
}