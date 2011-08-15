package pl.alios.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import pl.alios.model.Order;
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

}
