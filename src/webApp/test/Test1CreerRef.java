/**
 * 
 */
package webApp.test;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

import java.time.LocalDate;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import metier.EmployeCoordonnees;
import metier.Salarie;
import webApp.exception.RefInvalidException;

/**
 * @author Enrick <b>Méthode pour test</b>
 *         <p>
 *         Méthode de test de la fonction creerRef()
 * @see {@link metier.Salarie#creerRef()}
 *
 */
class Test1CreerRef {

	private static String nom = null;
	private static LocalDate dNaiss = null;

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("1.a - Cas nominal")
	@Test
	void testCreerRef1a() throws RefInvalidException {
		nom = "Durand";
		dNaiss = LocalDate.parse("1999-06-17");
		Salarie salTest01 = new Salarie("012", "Mr", nom, "Paul", dNaiss, "machin@mail.fr", "nom12", "06.12.13.14.145",
				new EmployeCoordonnees("23,rue du chemin", 13006, "Marseille"));
		assertEquals("SAdu06", salTest01.creerRef(), "la réf du salarié est : ");
		System.out.println(salTest01);
		 //System.out.println("Cas nominal - OK pour creerRef()"+salTest01.creerRef());
		assertEquals("du", salTest01.getNomEmploye().substring(0, 2).toLowerCase(), "les 2 premières lettres sont : ");
		 //System.out.println("Cas nominal - les 2 premières lettres sont:"+salTest01.getNomEmploye().substring(0,2).toLowerCase());
		assertEquals(6, salTest01.getDateNaissEmploye().getMonthValue(), "le mois est : ");
		 //System.out.println("Cas nominal - le mois est : "+salTest01.getDateNaissEmploye().getMonthValue() );
	}

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("1.b - nom OK / dNaiss Null")
	@Test
	void testCreerRef1b() {
		nom = "Durand";
		dNaiss = null;
		Salarie salTest01 = new Salarie("012", "Mr", nom, "Paul", dNaiss, "machin@mail.fr", "nom12", "06.12.13.14.145",
				new EmployeCoordonnees("23,rue du chemin", 13006, "Marseille"));
		assertEquals("SAdu01", salTest01.creerRef(), "cas dNaiss null");
		// System.out.println("nom OK / dNaiss Null : "+salTest01.creerRef());
		// System.out.println("nom OK / dNaiss Null - le nom
		// est:"+salTest01.getNomEmploye().substring(0,2).toLowerCase());
		// System.out.println("nom OK / dNaiss Null - le mois est :
		// "+salTest01.getDateNaissEmploye().getMonthValue() );
	}

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("1.c - nom null / dNaiss Null")
	@Test
	void testCreerRef1c() {
		nom = null;
		dNaiss = null;
		Salarie salTest01 = new Salarie("012", "Mr", nom, "Paul", dNaiss, "machin@mail.fr", "nom12", "06.12.13.14.145",
				new EmployeCoordonnees("23,rue du chemin", 13006, "Marseille"));
		Assertions.assertAll("Valeur null",
				() -> Assertions.assertEquals(null, salTest01.getNomEmploye(), "nom par défaut"),
				() -> Assertions.assertTrue(salTest01.getDateNaissEmploye().getMonthValue() == 1, "mois par défaut"),
				() -> Assertions.assertEquals("SAaaa01", salTest01.creerRef(), "cas null"));

		// System.out.println("nom null / dNaiss Null : "+salTest01.creerRef());
		// System.out.println("nom null / dNaiss Null - le nom est
		// :"+salTest01.getNomEmploye());
		// System.out.println("nom null / dNaiss Null - le mois est :
		// "+salTest01.getDateNaissEmploye().getMonthValue() );

	}

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("1.d - Nom avec majuscule")
	@ParameterizedTest
	@ValueSource(strings = { "DURAND", "dUrand","Durand" })
	void testCreerRef1d(String nom) {
		dNaiss = LocalDate.parse("2009-12-13");
		Salarie salTest02 = new Salarie("012", "Mr", nom, "Paul", dNaiss, "machin@mail.fr", "nom12", "06.12.13.14.145",
				new EmployeCoordonnees("23,rue du chemin", 13006, "Marseille"));
		assertEquals("SAdu012", salTest02.creerRef(), "nom en Majuscule");
		// System.out.println("Nom avec majuscule : "+salTest02.creerRef());
		// System.out.println("Nom avec majuscule - Le nom est
		// :"+salTest02.getNomEmploye());
	}

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("2.a - Nom en erreur")
	@Test
	void testEmploye2a() {
		nom = "Durant";
		dNaiss = LocalDate.parse("1990-06-12");
		Salarie salTest02 = new Salarie("012", "Mr", nom, "Paul", dNaiss, "machin@mail.fr", "nom12", "06.12.13.14.145",
				new EmployeCoordonnees("23,rue du chemin", 13006, "Marseille"));
		assertTrue(salTest02.getNomEmploye().contentEquals("Durand"), "Nom en erreur");

		// System.out.println("Cas nominal - OK pour creerRef() :
		// "+salTest02.creerRef());
		// System.out.println("nom OK / dNaiss Null - le nom est
		// :"+salTest02.getNomEmploye());
		// System.out.println("nom OK / dNaiss Null - le mois est :
		// "+salTest02.getDateNaissEmploye().getMonthValue() );
	}

	/**
	 * Test method for {@link metier.Salarie#creerRef()}.
	 */
	@DisplayName("2.b - Employé null")
	@Test
	void testEmploye2b() {
		Salarie salTest02 = null;
		assumeTrue(salTest02 != null, "L'instance est nulle");
		assertTrue(false);
	}

}
