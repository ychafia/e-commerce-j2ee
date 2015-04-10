package fr.uvsq.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.Produit;
import fr.uvsq.service.IProduitService;
import fr.uvsq.form.AjouterProduitForm;
public class AjoutProduitAction extends ActionSupport {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		IProduitService produitBo = (IProduitService) getWebApplicationContext().getBean("produitBusiness");
		AjouterProduitForm formProduit = (AjouterProduitForm) form;
		Produit unProduit = new Produit();
		
		unProduit.setLibelleProd(formProduit.getLibelleProduit());
		unProduit.setCouleurProd(formProduit.getCouleurProduit());
		unProduit.setMarqueProd(formProduit.getMarqueProduit());
		unProduit.setPrixAchatProd(formProduit.getPrixAchat());
		unProduit.setPrixVenteProd(formProduit.getPrixVente());
		unProduit.setPublicationProd(false);
		unProduit.setTailleProd(formProduit.getTailleProduit());
		unProduit.setTypeProd(formProduit.getTypeProduit());

		produitBo.ajouterProd(unProduit);

		return mapping.findForward("succesLog");
	}
}
