package com.login.action;

import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.portal.action.AccountAction;
import com.portal.domain.Account;
import com.portal.service.AccountService;

public class CustomerData extends AccountAction implements ServletRequestAware, ServletResponseAware, ServletContextAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private ServletContext servletContext;
	
	public String execute() throws Exception {
		
		System.out.println("CustomerData..execute()..............................");
		getServletRequest().setAttribute("card_name", "AvenuesTest");
		Enumeration<?> enu = getServletRequest().getParameterNames();
		
		HashMap<String,String> hs = new HashMap<String, String>();
		while (enu.hasMoreElements()) {
			String paramName = (String) enu.nextElement();
			String val = getServletRequest().getParameter(paramName);
			hs.put(paramName, val);
			System.out.println(paramName+"-------------"+val);
		}
		
		HttpServletRequest request=ServletActionContext.getRequest();  
		HttpSession session=request.getSession();
		System.out.println("subscriptionType============="+hs.get("subscription"));
		
		session.setAttribute("subscriptionType", hs.get("subscription"));
		/*getServletRequest().removeAttribute("subscription_type");
		AccountService accountService = new AccountService();
		
		HttpServletRequest request=ServletActionContext.getRequest();  
		HttpSession session=request.getSession();
		Account account = (Account) session.getAttribute("account");
		System.out.println("account..............................>");
		System.out.println(account.getAccountId()+", "+account.getOwnerName()+", "+account.getSubscriptionEndDate());
		
		accountService.updateSubscriptionEndDate(account, new Date());*/
		System.out.println("return success");
		
		return SUCCESS;
	}
	
	public String handleResponse() throws Exception {		
		return SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletRequest getServletRequest() {
		return request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public HttpServletResponse getServletResponse() {
		return response;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
