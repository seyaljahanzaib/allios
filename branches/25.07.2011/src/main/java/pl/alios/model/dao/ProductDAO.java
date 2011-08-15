package pl.alios.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
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

	public List<Product> getAllProducts() throws Exception {
		logger.info("SELECT p FROM Product p   -   GET ALL PRODUCTS");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		List<Product> products = null;
		try{
			Query query = em.createQuery("SELECT p FROM Product p");
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
	
	
	
}
