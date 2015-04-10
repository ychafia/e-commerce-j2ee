package fr.uvsq.form;

import org.apache.struts.action.ActionForm;

public class AjouterProduitForm extends ActionForm {
	private String libelleProduit;
    private double prixAchat;
    private double prixVente;
    private String marqueProduit;
    private String couleurProduit;
    private String typeProduit;
    private String tailleProduit;
    private String descriptionProduit;
    private int published;
    private int quantite;
	private int nbReviews;
	
	//getteurs
	public String getLibelleProduit() {
		return libelleProduit;
	}
	public double getPrixAchat() {
		return prixAchat;
	}
	public double getPrixVente() {
		return prixVente;
	}
	public String getMarqueProduit() {
		return marqueProduit;
	}
	public String getCouleurProduit() {
		return couleurProduit;
	}
	public String getTypeProduit() {
		return typeProduit;
	}
	public String getTailleProduit() {
		return tailleProduit;
	}
	public String getDescriptionProduit() {
		return descriptionProduit;
	}
	public int getPublished() {
		return published;
	}
	public int getQuantite() {
		return quantite;
	}
	public int getNbReviews() {
		return nbReviews;
	}
	
	//setteurs
	public void setLibelleProduit(String libelleProduit) {
		this.libelleProduit = libelleProduit;
	}
	public void setPrixAchat(double prixAchat) {
		this.prixAchat = prixAchat;
	}
	public void setPrixVente(double prixVente) {
		this.prixVente = prixVente;
	}
	public void setMarqueProduit(String marqueProduit) {
		this.marqueProduit = marqueProduit;
	}
	public void setCouleurProduit(String couleurProduit) {
		this.couleurProduit = couleurProduit;
	}
	public void setTypeProduit(String typeProduit) {
		this.typeProduit = typeProduit;
	}
	public void setTailleProduit(String tailleProduit) {
		this.tailleProduit = tailleProduit;
	}
	public void setDescriptionProduit(String descriptionProduit) {
		this.descriptionProduit = descriptionProduit;
	}
	public void setPublished(int published) {
		this.published = published;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public void setNbReviews(int nbReviews) {
		this.nbReviews = nbReviews;
	}

}
