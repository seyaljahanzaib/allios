package pl.alios.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import pl.alios.model.Category;
import pl.alios.model.Order;
import pl.alios.model.OrderItem;
import pl.alios.utils.Commons;
import pl.alios.utils.HibernateUtil;

public class OrderDAO extends AbstarctDAO{

	public void addOrder(Order order) throws Exception {
		logger.info("Dodawanie nowego zamowienia : " + order);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				Query q = em.createNativeQuery("select getInoviceNumber()");
				order.setNumber((String) q.getSingleResult());
				em.persist(order);
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

	public void merge(Order order) throws Exception {
		logger.info("Edytowanie zamowienia. OrderId : " + order.getOrderId());
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				em.merge(order);
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

	public List<Order> getOrders(String orderState) throws Exception {
		logger.info("SELECT c FROM Category c WHERE c.mainCategory IS NULL");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		List<Order> orders = null;
		try{
			Query q;
			if(orderState.equals(Commons.ORDER_STATE_ALL))
				q = em.createQuery("SELECT o FROM pl.alios.model.Order o");
			else{
				q = em.createQuery("SELECT o FROM pl.alios.model.Order o WHERE o.state = :state");
				q.setParameter("state", orderState);
			}
			orders = q.getResultList();
		}catch(Exception e2){
			logger.error("Blad pobrania zamowien z bazy. Filtr : " + orderState + " Message : " + e2);
			throw e2;
		}finally {
			  em.close();
		}
		return orders;
	}

	public Order setStatus(String orderID, String newStatus) throws Exception {
		logger.info("Zmieniam status na " + newStatus + " dla zamowneia : " + orderID);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		Order order = null;
		try {
			EntityTransaction t = em.getTransaction();
			try {
				Query q = em.createQuery("SELECT o FROM pl.alios.model.Order o WHERE o.orderId = :orderID");
				q.setParameter("orderID", Long.valueOf(orderID));
				order = (Order) q.getSingleResult();
				t.begin();
				order.setState(newStatus);
				em.merge(order);
				t.commit();
			} catch(Exception e){
				logger.error("Nie udalo sie zmienic statusu zamowienia  : "+ orderID + ". Wyjatek : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
		return order;
	}

	public Order getOrder(String orderId) throws Exception {
		logger.info("Pobieranie zamowneia : " + orderId);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		Order order = null;
		try {
			try {
				Query q = em.createQuery("SELECT o FROM pl.alios.model.Order o WHERE o.orderId = :orderID");
				q.setParameter("orderID", Long.valueOf(orderId));
				order = (Order) q.getSingleResult();
				order.getListOfProducts().size();
			} catch(Exception e){
				logger.error("Nie udalo sie pobrac zamowienia  : "+ orderId + ". Wyjatek : " + e);
				throw e;
			}
		} finally {
			em.close();
		}
		return order;
	}


}
