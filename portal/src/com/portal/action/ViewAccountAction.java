package com.portal.action;

import com.portal.domain.Account;

import java.util.ArrayList;
import java.util.Collection;

public class ViewAccountAction extends AccountAction 
{
	public String execute() throws Exception
	{
		Collection<Account> accountList = getAccountService().getAllPortalAccount();
		
		if (accountList == null)
		{
			accountList = new ArrayList<Account>();
		}
		
		getServletRequest().setAttribute("accountList", accountList);
		return SUCCESS;
	}
}
