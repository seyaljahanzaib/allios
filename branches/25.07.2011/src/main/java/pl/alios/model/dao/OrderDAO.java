package pl.alios.model.dao;

import javax.persistence.Query;

import pl.alios.model.Order;

public class OrderDAO extends AbstarctDAO{

	public void addOrder(Order order) {
		logger.info("Dodawanie nowego zamowienia : " + order);
		em.getTransaction().begin();
		Query q = em.createNativeQuery("select getInoviceNumber()");
		order.setNumber((String) q.getSingleResult());
		em.persist(order);
		em.getTransaction().commit();
	}

	public void merge(Order order) {
		logger.info("Edytowanie zamowienia. OrderId : " + order.getOrderId());
		em.getTransaction().begin();
		em.merge(order);
		em.getTransaction().commit();
		
	}
	

}
