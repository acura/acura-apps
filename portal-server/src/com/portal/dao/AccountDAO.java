package com.portal.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.portal.domain.Account;
import com.portal.exception.DAOException;
import com.portal.util.GenericUtils;

import java.util.Collection;
import java.util.Date;
import java.util.List;

@Transactional(propagation = Propagation.MANDATORY)
public class AccountDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Integer saveAccount(Account account) throws DAOException {
		Integer txnOid = null;
		Session session = sessionFactory.getCurrentSession();
		try {

			if (GenericUtils.isNotNull(account.getOid())) {
				Account accountDB = (Account) session.get(Account.class, account.getOid());

				accountDB.setAccountId(account.getAccountId());
				accountDB.setPassword(account.getPassword());
				accountDB.setOwnerName(account.getOwnerName());
				accountDB.setAccountType(account.getAccountType());
				accountDB.setTitle(account.getTitle());
				accountDB.setAddress(account.getAddress());
				accountDB.setPhoneNumber(account.getPhoneNumber());
				accountDB.setMobileNumber(account.getMobileNumber());
				accountDB.setEmailId(account.getEmailId());
				accountDB.setAlterNateEmailId(account.getAlterNateEmailId());
				accountDB.setSubcriptionStartDate(account.getSubcriptionStartDate());
				accountDB.setSubscriptionEndDate(account.getSubscriptionEndDate());
				accountDB.setAmountPaid(account.getAmountPaid());

				accountDB.setLastUpdatedBy(account.getLastUpdatedBy());
				accountDB.setLastUpdatedDate(new Date());

				Transaction tx = session.beginTransaction();
				session.update(accountDB);
				tx.commit();
			} else {
				account.setCreatedDate(new Date());
				account.setLastUpdatedDate(null);
				txnOid = (Integer) session.save(account);
			}

			return txnOid;
		} catch (Exception e) {
			throw new DAOException();
		}
	}

	public Collection<Account> getAllPortalAccount() throws DAOException {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query fromClauseQuery = session.createQuery("from Account account " + "order by account.accountId");
			List<Account> list = fromClauseQuery.list();
			return list != null && !list.isEmpty() ? list : null;
		} catch (Exception e) {
			throw new DAOException();
		}
	}

	public Account getAccountByAccountId(String accountId) throws DAOException {
		System.out.println("getAccountbyaccountid................................" + accountId);
		try {
			Session session = sessionFactory.getCurrentSession();
			Query fromClauseQuery = session
					.createQuery("from Account account " + "where account.accountId = '" + accountId + "'");
			List<Account> list = fromClauseQuery.list();
			System.out.println(".............................." + list.size());
			return list != null && !list.isEmpty() ? list.get(0) : null;
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException();
		}
	}

	public Account checkValidUser(String accountId, String password) throws DAOException {
		try {
			Account a = new Account();
			System.out.println(">>>>checkValidUser>..............." + accountId + ", " + password);
			Session session = sessionFactory.getCurrentSession();

			Query fromClauseQuery = session.createQuery("from Account account " + "where account.accountId = '"
					+ accountId + "' " + "and account.password = '" + password + "' ");

			List<Account> list = fromClauseQuery.list();
			System.out.println(".>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + list.size());
			if(list.size() > 0) {
				a = list.get(0);
			}
			
			System.out.println(a.getAccountId() + ", " + a.getMobileNumber() + ", " + a.getOwnerName());

			return list != null && !list.isEmpty() ? list.get(0) : null;
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException();
		}
	}

	public Integer updateSubscriptionEndDate(Account account, Date newSubDate) throws DAOException {

		System.out.println("updateSubscriptionEndDate......newSubDate===="+newSubDate);
		Session session = sessionFactory.getCurrentSession();
		System.out.println("AccountDao.... updateSubscriptionEndDate..............");
		System.out.println("account...subscriptionEndDate....." + account.getSubscriptionEndDate());
		try {
			Account acc = getAccountByAccountId(account.getAccountId());
			acc.setSubscriptionEndDate(newSubDate);
			session.saveOrUpdate(acc);
		} catch (Exception e) {
			e.printStackTrace();
			throw new DAOException("Exception in AccountDAO.updateSubscriptionEndDate(): " + e.getMessage(), e);
		}
		return 0;
	}
	
	public Integer updateAccount(Account account) throws DAOException {
		System.out.println("updateaccount .......subenddate==="+account.getSubscriptionEndDate());
		Session session = sessionFactory.getCurrentSession();
	      try{
	         Account ac = (Account)session.get(Account.class, account.getOid()); 
	         ac.setSubscriptionEndDate(account.getSubscriptionEndDate());
	         ac.setAmountPaid(account.getAmountPaid());
			 session.update(ac); 
	      }catch (HibernateException e) {
	         e.printStackTrace(); 
	      }
		
		return 0;
	}

	public Integer getLatestSrNoForAccountId() throws DAOException {
		Integer serialNumber = 1001;
		try {
			Session session = sessionFactory.getCurrentSession();
			Query fromClauseQuery = session.createQuery("select max(account.oid) " + "from Account account ");
			List<Integer> list = fromClauseQuery.list();
			if (list != null) {
				serialNumber = list.get(0) + 1;
			}

			return serialNumber;
		} catch (Exception e) {
			throw new DAOException();
		}
	}
}
