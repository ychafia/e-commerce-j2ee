package fr.uvsq.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.ActionSupport;

import fr.uvsq.bean.Client;
import fr.uvsq.form.LoginClientForm;
import fr.uvsq.service.IClientService;

public class LoginClientAction extends ActionSupport {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		IClientService clientBo = (IClientService) getWebApplicationContext().getBean("clientBusiness");
		LoginClientForm donnees = (LoginClientForm) form;
		
		String email = donnees.getEmail();
		String mdp = donnees.getMdp();

		System.out.println("email : " + donnees.getEmail());
		Client clt = clientBo.connexionClient(email);
		
		
		HttpSession session = request.getSession(true);
		session.setAttribute("clt",  clt);
		
		
		//request.setAttribute("liste_CoordBank",  clt.getListe_CoordBank());
		System.out.println(clt.getNomClient());
		if(clt.getNomClient() != null)
			if(clt.getMdpClient().equals(clientBo.crypterMotDePasse(mdp))) 
				return mapping.findForward("succesLog");
			else 
				return mapping.findForward("echecLog");
		else 
			return mapping.findForward("echecLog");
	}
}	
