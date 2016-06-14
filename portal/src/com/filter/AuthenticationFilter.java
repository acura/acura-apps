package com.filter;

import java.io.IOException;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.context.AppContext;
import com.portal.action.AccountAction;
import com.portal.domain.Account;
import com.portal.domain.PortalConstant;
import com.portal.exception.DAOException;
import com.portal.service.AccountService;

public class AuthenticationFilter extends AccountAction implements Filter {
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		HttpSession session = request.getSession(true);
		
		System.out.println("::::: AuthenticationFilter Request URI: " + request.getRequestURI());
		
		/*if (request.getSession() != null && request.getSession().getAttribute(HMSConstants.USER_OBJECT) != null) {
			chain.doFilter(req, res);
		} else {
			if (!request.getRequestURI().contains("hms/prolabLogin")
					&& !request.getRequestURI().contains("viewTestRecordsByUser")
					&& !request.getRequestURI().contains("hms/prolabLogout")) {
				response.sendRedirect("../.." + request.getContextPath() + "/login/login.action");
			} else {
				chain.doFilter(req, res);
			}
				
		}*/
		/*String acc = (String) session.getAttribute(PortalConstant.ACCOUNT_ID);
		
		Account ac = null;
		try {
			 ac =  ((AccountService) AppContext.getApplicationContext().getBean("accountService")).getAccountByAccountId(acc);
		} catch (DAOException e) {
			System.out.println("exception>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<"+ac);
			e.printStackTrace();
		}
		if(ac.getSubscriptionEndDate().compareTo(new Date()) < 0){
			System.out.println("else");
			System.out.println("No account found");
			 request.getRequestDispatcher("/jsp/billingDesk.jsp").forward(request, response);
			
		}*/
		
		chain.doFilter(req, res);
	}

	public void init(FilterConfig config) throws ServletException {
		// Get init parameter
		String testParam = config.getInitParameter("test-param");
		// Print the init parameter
		System.out.println("Test Param: " + testParam);
	}

	public void destroy() {
		// add code to release any resource
	}

}
