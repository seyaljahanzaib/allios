package pl.alios.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import pl.alios.model.Product;
import pl.alios.model.Property;
import pl.alios.utils.HibernateUtil;

public class ProductDAO extends AbstarctDAO{
	
	public List<Product> getProducts(String category) throws Exception{
		logger.info("SELECT p FROM Product p WHERE p.category LIKE '%:category%'");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try{
			Query query = em.createQuery("SELECT p FROM Product p WHERE p.category LIKE :category");
			query.setParameter("category", "%"+category+"%");
			ArrayList<Product> products = (ArrayList<Product>) query.getResultList();
			return products;
		} catch(Exception e){
			logger.error("MYERROR : " + e);
			throw e;
		}finally {
			  em.close();
		}
	}
	
	public Product getProduct(String product_id) throws Exception{
		logger.info("SELECT p FROM Product p WHERE p.product_id = " + product_id);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try{
			Query query = em.createQuery("SELECT p FROM Product p WHERE p.product_id = :product_id");
			query.setParameter("product_id", Long.valueOf(product_id));
			Product product = (Product) query.getSingleResult();
			return product;
		} catch(Exception e){
			logger.error("MYERROR : " + e);
			throw e;
		}finally {
			  em.close();
		}
	}

	public List<Product> getAllProducts(boolean activeOnly , String sort) throws Exception {
		logger.info("SELECT p FROM Product p   -   GET ALL PRODUCTS");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		List<Product> products = null;
		try{
			String queryString = "SELECT p FROM Product p";
			if(activeOnly) queryString += " WHERE p.active = :active";
			if(sort != null) queryString += " ORDER BY p." + sort + " ASC";
			
			Query query = em.createQuery(queryString);
			if(activeOnly) query.setParameter("active", Boolean.TRUE);

			products = query.getResultList();
		}catch(Exception e){
			logger.error("MYERROR : " + e);
			throw e;
		}finally {
			  em.close();
		}
		return products;
	}

	public ArrayList<Product> searchByName(String searchString) throws Exception {
		logger.info("SELECT p FROM Product p WHERE p.name LIKE %" + searchString +"%");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try{
			ArrayList<Product> products = new ArrayList<Product>();
			Query query = em.createQuery("SELECT p FROM Product p WHERE p.name LIKE :name");
			query.setParameter("name", "%"+ searchString +"%");
			products = (ArrayList<Product>) query.getResultList();
			return products;
		}catch(Exception e){
			logger.error("MYERROR : " + e);
			throw e;
		}finally {
			  em.close();
		}
	}

	public void saveProduct(Product product) throws Exception {
		logger.info("Dodawanie nowey produkt");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				em.persist(product);
				t.commit();
			} catch(Exception e){
				logger.error("Nie powiodlo sie dodanie nowego produktu : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
		
	}
	public String setProductAbundance(Map<String,String> map) throws Exception{
		logger.info("Zdjecie ze stanu produktu");
		
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		String result = null;
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				Query q = null;
				boolean wasRollback = false;
				for(String s : map.keySet()){
					q = em.createNativeQuery("select setAvailable(" + s + "," + map.get(s) +")");
					result  = (String) q.getSingleResult();
					if (result.equals("BLAD")){
						logger.info("Niezgodnosc stanow dla produktu o id =  " + s + " , przedmiotow o liczebnosci = " + map.get(s));
						wasRollback = true;
						t.rollback();
						break;
					}
				}
				if ( !wasRollback ) t.commit();
			} catch(Exception e){
				logger.error("MYERROR : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
		return result;
	}
	
	
	
	
	
}
