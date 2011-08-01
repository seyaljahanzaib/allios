package pl.alios.model.dao;

import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import pl.alios.model.Customer;
import pl.alios.model.Property;
import pl.alios.model.dao.adapter.DBAdapter;

public class CustomerDAO extends AbstarctDAO{
	
	public Customer login(String login, String password){
		
		  logger.info("SELECT c FROM Customer c WHERE c.login = :login");	
		  Query q = em.createQuery("SELECT c FROM Customer c WHERE c.login = :login");
		  logger.info("log : "+login);
		  logger.info("pass : "+password);
		  
		  q.setParameter("login", login);
		  Customer customer;
		  try{
			  customer = (Customer) q.getSingleResult();
		  } catch (NoResultException e) { 
			  logger.error(e);
			  return null;
		  }
		  
		  logger.info("Customer pass : "+customer.getPassword());
		  logger.info("pass : "+password);
		  
		  if (customer.getPassword().equals(password)){
			  return customer;
		  }else{
			  return null;
		  }
	}

	public boolean checklogin(String login) {
		  Query q = em.createQuery("SELECT c FROM Customer c WHERE c.login = :login");
		  q.setParameter("login", login);
		  Customer customer = null;
		  try{
			  customer = (Customer) q.getSingleResult();
		  } catch (NoResultException e) {
		  }
		  if (customer == null)
			  return false;
		  else
			  return true;
	}

	public void register(Customer customer) {
		logger.info("Dodano nowego urzytkownika : " + customer);
		em.getTransaction();
		EntityTransaction t = em.getTransaction();
		t.begin();
		Property property = DBAdapter.getInstance().getPropertyDAO().getValue("customerLastCode");
		customer.setCode(Integer.valueOf(property.getValue()));
		em.persist(customer);
		property.setValue(String.valueOf(1 + Integer.valueOf(property.getValue())));
		em.persist(property);
		t.commit();
	}

	public void merge(Customer customer) {
		logger.info("Zmiana hasla. Customer : " + customer.getLogin());
		em.getTransaction().begin();
		em.merge(customer);
		em.getTransaction().commit();
	}

	
	
	
}
