package com.portal.action;

import com.opensymphony.xwork2.ActionSupport;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

public class ViewProductAction extends ActionSupport implements ServletRequestAware, ServletResponseAware {

	private HttpServletResponse servletResponse;
	private HttpServletRequest servletRequest;
	private ServletContext servletContext;

	public String execute() throws Exception {
			HttpServletRequest request=ServletActionContext.getRequest();  
			HttpSession session=request.getSession();
			
			String accountId = (String) session.getAttribute("accountId");
			Date subscriptionEndDate = (Date) session.getAttribute("subscriptionEndDate");
			
			if (subscriptionEndDate.compareTo(new Date()) > 0) {
				return SUCCESS;
			} else {
				return INPUT;
			}
	}

	public HttpServletResponse getServletResponse() {
		return servletResponse;
	}

	public void setServletResponse(HttpServletResponse servletResponse) {
		this.servletResponse = servletResponse;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

}
