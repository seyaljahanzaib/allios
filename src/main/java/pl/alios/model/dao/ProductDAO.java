package pl.alios.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import pl.alios.model.Product;

public class ProductDAO extends AbstarctDAO{
	
	public List<Product> getProducts(String category){
		
		ArrayList<Product> products = new ArrayList<Product>();
		logger.info("SELECT p FROM Product p WHERE p.category LIKE '%:category%'");
		Query query = em.createQuery("SELECT p FROM Product p WHERE p.category LIKE :category");
		query.setParameter("category", "%"+category+"%");
		  try{
			  products = (ArrayList<Product>) query.getResultList();
			  logger.info("Pobrano produktów :"+ products.size());
		  } catch (NoResultException e) { 
			  logger.error(e);
			  return null;
		  }
		
		return products;
	}
	
	public Product getProduct(String product_id){
		logger.info("SELECT p FROM Product p WHERE p.product_id = " + product_id);
		Query query = em.createQuery("SELECT p FROM Product p WHERE p.product_id = :product_id");
		query.setParameter("product_id", Long.valueOf(product_id));
		Product product;
		try {
			product = (Product) query.getSingleResult();
		} catch (NoResultException e) {
			logger.error(e);
			return null;
		}
		return product;
	}

	public List<Product> getAllProducts() {
		logger.info("SELECT p FROM Product p   -   GET ALL PRODUCTS");
		Query query = em.createQuery("SELECT p FROM Product p");
		return query.getResultList();
	}
	
	
	
}
