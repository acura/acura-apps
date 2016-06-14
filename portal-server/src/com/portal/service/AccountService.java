package com.portal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.dao.AccountDAO;
import com.portal.domain.Account;
import com.portal.exception.DAOException;

import java.util.Collection;
import java.util.Date;

public class AccountService {
	@Autowired
	private AccountDAO accountDAO;

	@Transactional(propagation = Propagation.REQUIRED)
	public Integer saveAccount(Account account) throws DAOException {
		return accountDAO.saveAccount(account);
	}
	@Transactional(propagation = Propagation.REQUIRED)
	public Integer updateSubscriptionEndDate(Account account, Date newDate) throws DAOException {
		return accountDAO.updateSubscriptionEndDate(account, newDate);
	}
	
	@Transactional(propagation = Propagation.REQUIRED)
	public Integer updateAccount(Account account) throws DAOException {
		return accountDAO.updateAccount(account);
	}

	@Transactional(readOnly = true)
	public Collection<Account> getAllPortalAccount() throws DAOException {
		return accountDAO.getAllPortalAccount();
	}

	@Transactional(readOnly = true)
	public Account getAccountByAccountId(String accountId) throws DAOException {
		return accountDAO.getAccountByAccountId(accountId);
	}

	@Transactional(readOnly = true)
	public Account checkValidUser(String accountId, String password) throws DAOException {
		return accountDAO.checkValidUser(accountId, password);
	}

	@Transactional(readOnly = true)
	public Integer getLatestSrNoForAccountId() throws DAOException {
		return accountDAO.getLatestSrNoForAccountId();
	}
}
