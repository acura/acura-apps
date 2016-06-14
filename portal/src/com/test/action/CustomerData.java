package com.test.action;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.portal.action.AccountAction;

public class CustomerData extends AccountAction implements ServletRequestAware, ServletResponseAware, ServletContextAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private ServletContext servletContext;
	
	public String execute() throws Exception {
		
		System.out.println("CustomerData................................"+getServletRequest().getParameter("user_id"));
		Enumeration enu = getServletRequest().getParameterNames();
		HashMap<String,String> hs = new HashMap<String, String>();
		while (enu.hasMoreElements()) {
			String paramName = (String) enu.nextElement();
			String val = getServletRequest().getParameter(paramName);
			hs.put(paramName, val);
			System.out.println(paramName+"-------------"+val);
		}
		
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
