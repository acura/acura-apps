package com.login.action;

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

public class SubscribeAction extends AccountAction implements ServletRequestAware, ServletResponseAware, ServletContextAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private ServletContext servletContext;
	
	public String execute() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();  
		HttpSession session=request.getSession();
		
		String accountId = (String) session.getAttribute("accountId");
		Account ac = (Account) session.getAttribute("account");
		System.out.println("email id===="+ac.getEmailId());
		System.out.println("mobile no==="+ac.getMobileNumber());
		
		System.out.println("subscribe action execute................................"+accountId);
		/*Enumeration enu = getServletRequest().getParameterNames();
		HashMap<String,String> hs = new HashMap<String, String>();
		while (enu.hasMoreElements()) {
			String paramName = (String) enu.nextElement();
			String val = getServletRequest().getParameter(paramName);
			hs.put(paramName, val);
			System.out.println(paramName+"-------------"+val);
		}*/
		
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
