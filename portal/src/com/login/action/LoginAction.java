package com.login.action;

import java.util.Date;

//Comment Again : Testing
//Comment Again : 123
//Comment By Mayur
//Mahesh Comment
//hello //
//Dalee
//pooja
//nutan
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//MAhesh K//
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;
import com.portal.action.AccountAction;
import com.portal.domain.Account;
import com.portal.domain.PortalConstant;
import com.portal.util.GenericUtils;

public class LoginAction extends AccountAction implements ServletRequestAware, ServletResponseAware, ServletContextAware {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private ServletContext servletContext;

	private String userId;
	private String password;
	private String loginValidation;
	private String signon;
	private String subScriptionEndDate;

	public String execute() throws Exception {
		if (getServletRequest().getParameter("signon") != null) {
			if (!hasUserId()) {
				addFieldError("userId", "UserId is Required");
			}
			if (!hasPassword()) {
				addFieldError("password", "Password is Required");
			}
			if (hasUserId() && hasPassword()) {
				Account account = getAccountService().checkValidUser(getUserId(), getPassword());

				if (account != null) {
					getServletRequest().getSession().setAttribute(PortalConstant.ACCOUNT_ID, account.getAccountId());
					getServletRequest().getSession().setAttribute("subscriptionEndDate", account.getSubscriptionEndDate());
					System.out.println("subscriptionEndDate===="+account.getSubscriptionEndDate());
					 HttpSession session = request.getSession();
				     session.setAttribute("accountId", account.getAccountId());
				     session.setAttribute("subscriptionEndDate", account.getSubscriptionEndDate());
				     session.setAttribute("account", account);
				     
				} else {
					setUserId("");
					addFieldError("loginValidation", "Invalid UserId OR Password");
					return INPUT;
				}

				return SUCCESS;
			}
		}

		return INPUT;
	}
	
	public String logout() {
		return "logout";
	}

	/*
	 * public void validate() { if (!hasUserId()) { addFieldError("userId",
	 * "UserId is Required"); } if (!hasPassword()) { addFieldError("password",
	 * "Password is Required"); } if (hasUserId() && hasPassword()) { if () {
	 * 
	 * } else { addFieldError("userId", "Invalid UserId OR Password"); } } }
	 */

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLoginValidation() {
		return loginValidation;
	}

	public void setLoginValidation(String loginValidation) {
		this.loginValidation = loginValidation;
	}

	public String getSignon() {
		return signon;
	}

	public void setSignon(String signon) {
		this.signon = signon;
	}

	public boolean hasUserId() {
		return GenericUtils.isNotNullOrEmpty(getUserId());
	}

	public boolean hasPassword() {
		return GenericUtils.isNotNullOrEmpty(getPassword());
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
