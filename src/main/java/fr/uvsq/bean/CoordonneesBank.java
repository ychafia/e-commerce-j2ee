package fr.uvsq.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="t_CoordonneesBank")
public class CoordonneesBank {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idCoordBank")
	private int idCoordBank;
	@Column(name="nomBank", nullable=false, length=100)
	private String nomBank;
	@Column(name="numCompteBank", nullable=false, length=100)
	private Integer numCompteBank;
	@Column(name="dateValidite", nullable=false, length=100)
	private Date dateValidite;
	
	public final int getIdCoordBank() {
		return idCoordBank;
	}
	public final void setIdCoordBank(int idCoordBank) {
		this.idCoordBank = idCoordBank;
	}
	public final String getNomBank() {
		return nomBank;
	}
	public final void setNomBank(String nomBank) {
		this.nomBank = nomBank;
	}
	public final Integer getNumCompteBank() {
		return numCompteBank;
	}
	public final void setNumCompteBank(Integer numCompteBank) {
		this.numCompteBank = numCompteBank;
	}
	public final Date getDateValidite() {
		return dateValidite;
	}
	public final void setDateValidite(Date dateValidite) {
		this.dateValidite = dateValidite;
	}
	public CoordonneesBank() {
		super();
	}
	@Override
	public String toString() {
		return "CoordonneesBank [idCoordBank=" + idCoordBank + ", nomBank="
				+ nomBank + ", numCompteBank=" + numCompteBank
				+ ", dateValidite=" + dateValidite + "]";
	}
	public CoordonneesBank(String nomBank, Integer numCompteBank,
			Date dateValidite) {
		super();
		this.nomBank = nomBank;
		this.numCompteBank = numCompteBank;
		this.dateValidite = dateValidite;
	}
}
