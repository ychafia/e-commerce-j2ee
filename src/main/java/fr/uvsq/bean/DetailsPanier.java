package fr.uvsq.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_DetailsPanier")
public class DetailsPanier implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idDetPanier")
	private Integer idDetPanier;
	
	@Column(name="dateAjout", nullable=false, length=100)
	private Date dateAjout;
	
	@Column(name="prixProd", nullable=false, length=100)
	private double prixProd;
	
	@Column(name="qte", nullable=false, length=100)
	private int qte;
	
	@ManyToOne
	@JoinColumn(name="ID_PANIER")
	private Panier panier;
	
	@ManyToOne
	@JoinColumn(name="ID_PROD")
	private Produit produit;
	
	public final Integer getIdDetPanier() {
		return idDetPanier;
	}
	public final void setIdDetPanier(Integer idDetPanier) {
		this.idDetPanier = idDetPanier;
	}
	public final Date getDateAjout() {
		return dateAjout;
	}
	public final void setDateAjout(Date dateAjout) {
		this.dateAjout = dateAjout;
	}
	public final double getPrixProd() {
		return prixProd;
	}
	public final void setPrixProd(double prixProd) {
		this.prixProd = prixProd;
	}
	public final int getQte() {
		return qte;
	}
	public final void setQte(int qte) {
		this.qte = qte;
	}
	public final Panier getPanier() {
		return panier;
	}
	public final void setPanier(Panier panier) {
		this.panier = panier;
	}
	public DetailsPanier() {
		super();
	}
	public DetailsPanier(Date dateAjout, double prixProd, int qte, Panier panier) {
		super();
		this.dateAjout = dateAjout;
		this.prixProd = prixProd;
		this.qte = qte;
		//this.panier = panier;
	}
	@Override
	public String toString() {
		return "DetailsPanier [idDetPanier=" + idDetPanier + ", dateAjout="
				+ dateAjout + ", prixProd=" + prixProd + ", qte=" + qte
				 + "]";
	}
	
	public final Produit getProduit() {
		return produit;
	}
	public final void setProduit(Produit produit) {
		this.produit = produit;
	}
}
