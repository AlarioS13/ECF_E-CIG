package metier.technique;

import java.util.ArrayList;

import metier.Employe;

public class Employes extends ArrayList<Employe> {

	private static final long serialVersionUID = 1L;

	public Employes() {

	}
	
	public Employes(ArrayList<Employe> employes) {
		this.addAll(employes);
	}

}
