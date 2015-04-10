package fr.uvsq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.Client;
import fr.uvsq.bean.DetailsPanier;
import fr.uvsq.bean.Panier;
import fr.uvsq.service.IPanierService;

public class MonPanierAction extends ActionSupport {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession(false);
		Client clt = (Client) session.getAttribute("clt");
		
		System.out.println("++++++"+clt.getEmailClient());
		
		IPanierService panierBo = (IPanierService) getWebApplicationContext().getBean("panierBusiness");
		
		Panier pan = panierBo.haveAPanier(clt.getIdClient());
		List<DetailsPanier> listeDetPan = panierBo.rechercherDetailPanierClient(pan.getIdPanier());
		
		session.setAttribute("listeDetPan", listeDetPan);
				
		
		return mapping.findForward("succesLog");
	}
}
