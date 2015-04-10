package fr.uvsq.utils;

import java.util.Date;

public class MapperDetailsProduit {
	private Integer refProd;
	private Date dateAjout;
	private double prixProd;
	private Integer idClt;
	public final Integer getRefProd() {
		return refProd;
	}
	public final void setRefProd(Integer refProd) {
		this.refProd = refProd;
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
	public final Integer getIdClt() {
		return idClt;
	}
	public final void setIdClt(Integer idClt) {
		this.idClt = idClt;
	}
	@Override
	public String toString() {
		return "MapperDetailsProduit [refProd=" + refProd + ", dateAjout="
				+ dateAjout + ", prixProd=" + prixProd + ", idClt=" + idClt + "]";
	}
}
