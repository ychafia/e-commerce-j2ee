package fr.uvsq.bean;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="t_Produit")
public class Produit implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="refProd")
	private Integer refProd;
	
	@Column(name="libelleProd", nullable=false, length=100)
	private String libelleProd;
	
	@Column(name="prixAchatProd", nullable=false, length=100)
	private double prixAchatProd;
	
	@Column(name="prixVenteProd", nullable=false, length=100)
	private double prixVenteProd;
	
	@Column(name="marqueProd", nullable=false, length=100)
	private String marqueProd;
	
	@Column(name="couleurProd", nullable=false, length=100)
	private String couleurProd;
	
	@Column(name="typeProd", nullable=false, length=100)
	private String typeProd;
	
	@Column(name="tailleProd", nullable=false, length=100)
	private String tailleProd;
	
	@Column(name="publicationProd", nullable=false, length=100)
	private boolean publicationProd;
	
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL, mappedBy="produit")
	private Set<DetailsPanier> listePanier;
	
	public final Integer getRefProd() {
		return refProd;
	}
	public final void setRefProd(Integer refProd) {
		this.refProd = refProd;
	}
	public final String getLibelleProd() {
		return libelleProd;
	}
	public final void setLibelleProd(String libelleProd) {
		this.libelleProd = libelleProd;
	}
	public final double getPrixAchatProd() {
		return prixAchatProd;
	}
	public final void setPrixAchatProd(double prixAchatProd) {
		this.prixAchatProd = prixAchatProd;
	}
	public final double getPrixVenteProd() {
		return prixVenteProd;
	}
	public final void setPrixVenteProd(double prixVenteProd) {
		this.prixVenteProd = prixVenteProd;
	}
	public final String getMarqueProd() {
		return marqueProd;
	}
	public final void setMarqueProd(String marqueProd) {
		this.marqueProd = marqueProd;
	}
	public final String getCouleurProd() {
		return couleurProd;
	}
	public final void setCouleurProd(String couleurProd) {
		this.couleurProd = couleurProd;
	}
	public final String getTypeProd() {
		return typeProd;
	}
	public final void setTypeProd(String typeProd) {
		this.typeProd = typeProd;
	}
	public final String getTailleProd() {
		return tailleProd;
	}
	public final void setTailleProd(String tailleProd) {
		this.tailleProd = tailleProd;
	}
	public final boolean isPublicationProd() {
		return publicationProd;
	}
	public final void setPublicationProd(boolean publicationProd) {
		this.publicationProd = publicationProd;
	}
	public Produit() {
		super();
	}
	public Produit(String libelleProd, double prixAchatProd,
			double prixVenteProd, String marqueProd, String couleurProd,
			String typeProd, String tailleProd, boolean publicationProd) {
		super();
		this.libelleProd = libelleProd;
		this.prixAchatProd = prixAchatProd;
		this.prixVenteProd = prixVenteProd;
		this.marqueProd = marqueProd;
		this.couleurProd = couleurProd;
		this.typeProd = typeProd;
		this.tailleProd = tailleProd;
		this.publicationProd = publicationProd;
	}
	@Override
	public String toString() {
		return "Produit [refProd=" + refProd + ", libelleProd=" + libelleProd
				+ ", prixAchatProd=" + prixAchatProd + ", prixVenteProd="
				+ prixVenteProd + ", marqueProd=" + marqueProd
				+ ", couleurProd=" + couleurProd + ", typeProd=" + typeProd
				+ ", tailleProd=" + tailleProd + ", publicationProd="
				+ publicationProd + "]";
	}
	public final Set<DetailsPanier> getListePanier() {
		return listePanier;
	}
	public final void setListePanier(Set<DetailsPanier> listePanier) {
		this.listePanier = listePanier;
	}
}
