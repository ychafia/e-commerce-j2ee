/**
 * Classe morte.
 * */
package fr.uvsq.form;

import org.apache.struts.action.ActionForm;

public class AjouterProduitPanierForm extends ActionForm {
private Integer refprod;
	
	public final Integer getRefprod() {
		return refprod;
	}

	public final void setRefprod(Integer refprod) {
		this.refprod = refprod;
	}

	public String afficherNom(){
		return "CHAFIA";
	}
}
