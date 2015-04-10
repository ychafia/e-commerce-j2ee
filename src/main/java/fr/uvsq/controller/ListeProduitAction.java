package fr.uvsq.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.Produit;
import fr.uvsq.service.IProduitService;



public class ListeProduitAction extends ActionSupport {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		IProduitService clientBo = (IProduitService) getWebApplicationContext().getBean("produitBusiness");
		ArrayList<Produit> maListeProd;

		maListeProd = (ArrayList<Produit>) clientBo.rechercherTous();
		
		HttpSession session = request.getSession(true);
		session.setAttribute("maListeProd",  maListeProd);
		
		return mapping.findForward("succesLog");
	}
}
