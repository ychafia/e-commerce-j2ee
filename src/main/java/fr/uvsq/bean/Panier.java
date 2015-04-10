package fr.uvsq.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_Panier")
public class Panier implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idPanier")
	private int idPanier;
	@Column(name="dateMajPanier", nullable=false, length=100)
	private Date dateMajPanier;
	@Column(name="sommeTotale", nullable=false, length=100)
	private double sommeTotale;
	@Column(name="etatPanier", nullable=false, length=100)
	private String etatPanier;
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL, mappedBy="panier")
	//@JoinTable(name="detailsPanier", joinColumns={@JoinColumn(name="PANIER_ID")}, inverseJoinColumns = {@JoinColumn(name="DETAILSPANIER_ID")})
	private Set<DetailsPanier> listeDetPanier = new HashSet<DetailsPanier>();
//	@ManyToMany
//	private Set<Produit> listeProd;
	@OneToOne
	private Client clt; //Uniderctionnel
	public final Integer getIdPanier() {
		return idPanier;
	}
	public final void setIdPanier(Integer idPanier) {
		this.idPanier = idPanier;
	}
	public final Date getDateMajPanier() {
		return dateMajPanier;
	}
	public final void setDateMajPanier(Date dateMajPanier) {
		this.dateMajPanier = dateMajPanier;
	}
	public final double getSommeTotale() {
		return sommeTotale;
	}
	public final void setSommeTotale(double sommeTotale) {
		this.sommeTotale = sommeTotale;
	}
	public final String getEtatPanier() {
		return etatPanier;
	}
	public final void setEtatPanier(String etatPanier) {
		this.etatPanier = etatPanier;
	}
	public Panier() {
		super();
	}
	public Panier(Date dateMajPanier, double sommeTotale, String etatPanier) {
		super();
		this.dateMajPanier = dateMajPanier;
		this.sommeTotale = sommeTotale;
		this.etatPanier = etatPanier;
	}
	@Override
	public String toString() {
		return "Panier [idPanier=" + idPanier + ", dateMajPanier="
				+ dateMajPanier + ", sommeTotale=" + sommeTotale
				+ ", etatPanier=" + etatPanier + ", listeDetPanier="
				+ listeDetPanier.toString() + "]";
	}
	public final Set<DetailsPanier> getListeDetPanier() {
		return listeDetPanier;
	}
	public final void setListeDetPanier(Set<DetailsPanier> listeDetPanier) {
		this.listeDetPanier = listeDetPanier;
	}
	public final Client getClt() {
		return clt;
	}
	public final void setClt(Client clt) {
		this.clt = clt;
	}
	
}
