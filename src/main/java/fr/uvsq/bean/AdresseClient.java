package fr.uvsq.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_AdresseClient")
public class AdresseClient implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idAdresse")
	private Integer id;
	@Column(name="numDomicil", nullable=false, length=100)
	private Integer numDomicil;
	@Column(name="rue", nullable=false, length=100)
	private String rue;
	@Column(name="etage", nullable=false, length=100)
	private String etage;
	@Column(name="ville", nullable=false, length=100)
	private String ville;
	@Column(name="codePostal", nullable=false, length=100)
	private Integer codePostal;
	
	@OneToOne(mappedBy="adrClient")
	private Client clt;
	
	public final Integer getId() {
		return id;
	}
	public final void setId(Integer id) {
		this.id = id;
	}
	public final Integer getNumDomicil() {
		return numDomicil;
	}
	public final void setNumDomicil(Integer numDomicil) {
		this.numDomicil = numDomicil;
	}
	public final String getRue() {
		return rue;
	}
	public final void setRue(String rue) {
		this.rue = rue;
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
	public AdresseClient() {
		super();
	}
	public AdresseClient(int numDomicil, String rue, String etage, String ville) {
		super();
		this.numDomicil = numDomicil;
		this.rue = rue;
		this.etage = etage;
		this.ville = ville;
	}
	public final Integer getCodePostal() {
		return codePostal;
	}
	public final void setCodePostal(Integer codePostal) {
		this.codePostal = codePostal;
	}
	@Override
	public String toString() {
		return "AdresseClient [id=" + id + ", numDomicil=" + numDomicil
				+ ", rue=" + rue + ", etage=" + etage + ", ville=" + ville
				+ ", codePostal=" + codePostal + "]";
	}
	public final Client getClt() {
		return clt;
	}
	public final void setClt(Client clt) {
		this.clt = clt;
	}
	
}
