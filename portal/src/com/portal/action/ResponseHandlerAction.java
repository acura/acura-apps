package com.portal.action;

import java.net.URLDecoder;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.ccavenue.security.AesCryptUtil;
import com.portal.constants.CcavenueParams;
import com.portal.domain.Account;
import com.portal.domain.PortalConstant;

public class ResponseHandlerAction extends AccountAction implements ServletRequestAware, ServletResponseAware {

	private HttpServletResponse httpServletResponse;
	private HttpServletRequest httpServletRequest;
	private ServletContext servletContext;
	

	public String execute() throws Exception {
		System.out.println("ResponseHandlerAction...... execute ..........");

		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("account");
		System.out.println("subscription type===" + session.getAttribute("subscriptionType"));
		
		String workingKey = PortalConstant.workingKey;

		String encryptedResponse = httpServletRequest.getParameter("encResp");
		System.out.println("encryptedResponse======" + encryptedResponse);

		if (encryptedResponse != null) {
			AesCryptUtil aesUtil = new AesCryptUtil(workingKey);
			String decResp = aesUtil.decrypt(encryptedResponse);
			System.out.println("decResp===" + decResp);
			StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
			
			String pair = null, pname = null, pvalue = null;
			
			while (tokenizer.hasMoreTokens()) {
				pair = (String) tokenizer.nextToken();
				if (pair != null) {
					StringTokenizer strTok = new StringTokenizer(pair, "=");
					pname = "";
					pvalue = "";
					if (strTok.hasMoreTokens()) {
						pname = (String) strTok.nextToken();
						if (strTok.hasMoreTokens())
							pvalue = (String) strTok.nextToken();
						CcavenueParams.ccavenueParamHM.put(pname, URLDecoder.decode(pvalue, "UTF-8"));
						
					}
				}
			}
			Enumeration enumeration = CcavenueParams.ccavenueParamHM.keys();
			while (enumeration.hasMoreElements()) {
				pname = "" + enumeration.nextElement();
				pvalue = "" + CcavenueParams.ccavenueParamHM.get(pname);
				 System.out.println(pname+".............."+pvalue);
			}

		//	session.setAttribute("payment_result", hs.get("order_status"));
			if (CcavenueParams.ccavenueParamHM.get("order_status").equals("Success")) {
				Date oldDateObj = account.getSubscriptionEndDate();
				if (oldDateObj.compareTo(new Date()) <= 0) {
					oldDateObj = new Date();
				}
				Calendar cal = Calendar.getInstance();
				cal.setTime(oldDateObj);
				String subType = (String) session.getAttribute("subscriptionType");
				int noOfMonths=0;
				if(subType.equals("monthly")) {
					noOfMonths=1;
				} else if(subType.equals("anually")) {
					noOfMonths=12;
				}
				cal.add(Calendar.MONTH, noOfMonths);
				Date newDate = cal.getTime();
				session.setAttribute("subscriptionEndDate", newDate);
				/*
				 * String d_str = sdf.format(d); System.out.println(d);
				 * System.out.println(d_str);
				 */
			//	session.setAttribute("subscriptionEndDate", newDate);
				// getAccountService().updateSubscriptionEndDate(account,
				// newDate);
				account.setSubscriptionEndDate(newDate);
				account.setSubcriptionStartDate(new Date());
				String text = (String) CcavenueParams.ccavenueParamHM.get("amount"); // example String
				double value = Double.parseDouble(text.trim());

				account.setAmountPaid((value));
				account.setLastUpdatedDate(new Date());
				getAccountService().updateAccount(account);

				System.out.println("return success");

			}
		}
		return SUCCESS;
	}

	@Override
	public void setServletResponse(HttpServletResponse httpServletResponse) {
		this.httpServletResponse = httpServletResponse;

	}

	@Override
	public void setServletRequest(HttpServletRequest httpServletRequest) {
		this.httpServletRequest = httpServletRequest;

	}

}
