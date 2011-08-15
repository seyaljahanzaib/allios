package pl.alios.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import pl.alios.model.Customer;
import pl.alios.model.Order;
import pl.alios.model.Property;
import pl.alios.model.dao.adapter.DBAdapter;
import pl.alios.utils.HibernateUtil;

public class CustomerDAO extends AbstarctDAO {

	public Customer login(String login, String password) throws Exception {
		logger.info("SELECT c FROM Customer c WHERE c.login = :login");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		Customer customer;
		try {
			Query q = em.createQuery("SELECT c FROM Customer c WHERE c.login = :login");
			q.setParameter("login", login);
			customer = (Customer) q.getSingleResult();
			customer.getOrders().size();
			for(Order o : customer.getOrders()){
				o.getListOfProducts().size();
			}
		}catch(NoResultException e1){
			return null;
		}catch(Exception e2){
			logger.error("MYERROR : " + e2);
			throw e2;
		}finally {
			  em.close();
		}
		if (customer.getPassword().equals(password)) {
			return customer;
		} else {
			return null;
		}
	}

	public boolean checklogin(String login) throws Exception {
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		Customer customer = null;
		try{
			Query q = em.createQuery("SELECT c FROM Customer c WHERE c.login = :login");
			q.setParameter("login", login);
			customer = (Customer) q.getSingleResult();
		}catch(NoResultException e1){
			return false;
		}catch(Exception e2){
			logger.error("MYERROR : " + e2);
			throw e2;
		}finally {
			  em.close();
		}
		if (customer == null)
			return false;
		else
			return true;
	}

	public void register(Customer customer) throws Exception {
		logger.info("Dodawanie nowego urzytkownika : " + customer);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				
				Property property = DBAdapter.getInstance().getPropertyDAO().getValue("customerLastCode");
				property.setValue(String.valueOf(1 + Integer.valueOf(property.getValue())));
				customer.setCode(Integer.valueOf(property.getValue()));
				em.persist(customer);
				em.merge(property);
				t.commit();
			} catch(Exception e){
				logger.error("MYERROR : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
	}

	public void merge(Customer customer) throws Exception {
		logger.info("Zmiana hasla. Customer : " + customer.getLogin());
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				em.merge(customer);
				t.commit();
			} catch(Exception e){
				logger.error("MYERROR : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
	}

}
