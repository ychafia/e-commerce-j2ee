package fr.uvsq.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.Produit;
import fr.uvsq.service.IProduitService;

public class DetailsProduit extends ActionSupport {
@Override
public ActionForward execute(ActionMapping mapping, ActionForm form,
		HttpServletRequest request, HttpServletResponse response)
		throws Exception {

	System.out.println(request.getParameter("refp"));
	
	IProduitService produitBo = (IProduitService) getWebApplicationContext().getBean("produitBusiness");
	Produit prod = produitBo.findProdByRef(Integer.parseInt(request.getParameter("refp")));
	System.out.println(prod.toString());
	
	HttpSession session = request.getSession(true);
	session.setAttribute("unprod", prod);
	
	return mapping.findForward("succesLog");
}
}
