package fr.uvsq.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;



public class SingUpForm extends ActionForm {
	private String nom;
	private String prenom;
	private String mdp;
	private String mdp2;
	private Integer tel;
	private String email;
	private Integer numDomicile;
	private String nomRue;
	private String etage;
	private String ville;
	private Integer codePost;
	
	public final String getNom() {
		return nom;
	}
	public final void setNom(String nom) {
		this.nom = nom;
	}
	public final String getPrenom() {
		return prenom;
	}
	public final void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public final String getMdp() {
		return mdp;
	}
	public final void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public final String getMdp2() {
		return mdp2;
	}
	public final void setMdp2(String mdp2) {
		this.mdp2 = mdp2;
	}
	public final Integer getTel() {
		return tel;
	}
	public final void setTel(Integer tel) {
		this.tel = tel;
	}
	public final String getEmail() {
		return email;
	}
	public final void setEmail(String email) {
		this.email = email;
	}
	
	public final Integer getNumDomicile() {
		return numDomicile;
	}
	public final void setNumDomicile(Integer numDomicile) {
		this.numDomicile = numDomicile;
	}
	public final String getNomRue() {
		return nomRue;
	}
	public final void setNomRue(String nomRue) {
		this.nomRue = nomRue;
	}
	public final String getEtage() {
		return etage;
	}
	public final void setEtage(String etage) {
		this.etage = etage;
	}
	public final String getVille() {
		return ville;
	}
	public final void setVille(String ville) {
		this.ville = ville;
	}
	public final Integer getCodePost() {
		return codePost;
	}
	public final void setCodePost(Integer codePost) {
		this.codePost = codePost;
	}
	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		//ClientPersistance cltp = new ClientPersistance();
		if(getNom().equals(null) || getNom().length() < 2){
			errors.add("nom", new ActionMessage("erreur.nom.required"));
		}
		if(getPrenom() == null || getPrenom().length() < 2){
			errors.add("prenom", new ActionMessage("erreur.prenom.required"));
		}
//		if(getTel().toString().length() < 9 || getTel().equals(null)){
//			errors.add("tel", new ActionMessage("erreur.tel.required"));
//		}
		if(getMdp() == null || getMdp2() == null ||!getMdp().equals(getMdp2())){
			errors.add("mdp", new ActionMessage("erreur.mdp.required"));
		}
		if(getEmail() == null || getEmail().length() < 2){
			errors.add("email", new ActionMessage("erreur.email.required"));
		}
		if(getNumDomicile().toString() == null || getNumDomicile().toString().length() < 0){
			errors.add("adrp", new ActionMessage("erreur.adrp.required"));
		}
		if(getVille() == null || getVille().length() < 0){
			errors.add("adrp", new ActionMessage("erreur.adrp.required"));
		}
		if(getCodePost().toString() == null || getCodePost().toString().length() < 0){
			errors.add("adrp", new ActionMessage("erreur.adrp.required"));
		}
//		if(cltp.VerifEmail(getEmail()) == true){
//			errors.add("emailDup", new ActionMessage("erreur.EmailDup.required"));
//		}
		return errors;
	}
	
}
