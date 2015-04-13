package fr.uvsq.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_Client")
public class Client implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idClient")
	private int idClient;
	
	@Column(name="nomClient", nullable=false, length=100)
	private String nomClient;
	
	@Column(name="prenomClient", nullable=false, length=100)
	private String prenomClient;
	
	@Column(name="mdpClient", nullable=false, length=100)
	private String mdpClient;
	
	@Column(name="emailClient", nullable=false, length=100)
	private String emailClient;
	
	@Column(name="civilite", length=100)
	private String civilite;
	
	@Column(name="telClient", nullable=false, length=100)
	private int telClient;
	
	@OneToOne(cascade=CascadeType.ALL)
	private AdresseClient adrClient;
	
	@Column(name="etatConnexion", nullable=false, length=100)
	private boolean etatConnexion;
	
	@Column(name="catFideliteClient", nullable=false, length=100)
	private String catFideliteClient;
	
	@Column(name="pointFideliteClient", nullable=false, length=100)
	private int pointFideliteClient;
	
	@Column(name="dateInscrpClient", nullable=false, length=100)
	private Date dateInscrpClient;
	
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinTable(name="client_coordB", joinColumns={@JoinColumn(name="CLIENT_ID")}, inverseJoinColumns = {@JoinColumn(name="COORDB_ID")})
	private Set<CoordonneesBank> liste_CoordBank;//Une déclaration bidirectionnelle

	public Client() {
	}
	public final int getIdClient() {
		return idClient;
	}
	public final void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	public final String getNomClient() {
		return nomClient;
	}
	public final void setNomClient(String nomClient) {
		this.nomClient = nomClient;
	}
	public final String getMdpClient() {
		return mdpClient;
	}
	public final void setMdpClient(String mdpClient) {
		this.mdpClient = mdpClient;
	}
	public final String getPrenomClient() {
		return prenomClient;
	}
	public final void setPrenomClient(String prenomClient) {
		this.prenomClient = prenomClient;
	}
	public final String getEmailClient() {
		return emailClient;
	}
	public final void setEmailClient(String emailClient) {
		this.emailClient = emailClient;
	}
	public final String getCivilite() {
		return civilite;
	}
	public final void setCivilite(String civilite) {
		this.civilite = civilite;
	}
	public final int getTelClient() {
		return telClient;
	}
	public final void setTelClient(int telClient) {
		this.telClient = telClient;
	}
	public final Date getDateInscrpClient() {
		return dateInscrpClient;
	}
	public final void setDateInscrpClient(Date dateInscrpClient) {
		this.dateInscrpClient = dateInscrpClient;
	}
	public final boolean isEtatConnexion() {
		return etatConnexion;
	}
	public final void setEtatConnexion(boolean etatConnexion) {
		this.etatConnexion = etatConnexion;
	}
	public final String getCatFideliteClient() {
		return catFideliteClient;
	}
	public final void setCatFideliteClient(String catFideliteClient) {
		this.catFideliteClient = catFideliteClient;
	}
	public final int getPointFideliteClient() {
		return pointFideliteClient;
	}
	public final void setPointFideliteClient(int pointFideliteClient) {
		this.pointFideliteClient = pointFideliteClient;
	}
	public final AdresseClient getAdrClient() {
		return adrClient;
	}
	public final void setAdrClient(AdresseClient adrClient) {
		this.adrClient = adrClient;
	}
	public final Set<CoordonneesBank> getListe_CoordBank() {
		return liste_CoordBank;
	}
	public final void setListe_CoordBank(Set<CoordonneesBank> liste_CoordBank) {
		this.liste_CoordBank = liste_CoordBank;
	}
	@Override
	public String toString() {
		return "Client [idClient=" + idClient + ", nomClient=" + nomClient
				+ ", prenomClient=" + prenomClient + ", mdpClient=" + mdpClient
				+ ", emailClient=" + emailClient + ", telClient=" + telClient
				+ ", adrClient=" + adrClient.toString() + ", etatConnexion="
				+ etatConnexion + ", catFideliteClient=" + catFideliteClient
				+ ", pointFideliteClient=" + pointFideliteClient + "]";
	}
}
