package com.portal.service;

import com.portal.dao.AuthenticationDAO;
import com.portal.exception.DAOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class AuthenticationService 
{
	@Autowired
	private AuthenticationDAO authenticationDAO;
	
	/*@Transactional(readOnly=true)
	public HMSUser authenticateCredentials(String userName, String password)
	throws DAOException
	{
		return authenticationDAO.authenticateCredentials(userName, password);
	}

	@Transactional(readOnly=true)
	public HMSUser validateUserCredentials (String userId, String password)
	throws DAOException
	{
		return authenticationDAO.validateUserCredentials(userId, password);
	}*/
}
