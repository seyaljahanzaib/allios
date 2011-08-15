package pl.alios.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.hibernate.Hibernate;

import pl.alios.model.Category;
import pl.alios.model.Customer;
import pl.alios.model.Property;
import pl.alios.model.dao.adapter.DBAdapter;
import pl.alios.utils.HibernateUtil;

public class CategoryDAO extends AbstarctDAO {

	public List<Category> getMainCategories() throws Exception {
		logger.info("SELECT c FROM Category c WHERE c.mainCategory IS NULL");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		List<Category> categories = null;
		try{
			Query q = em.createQuery("SELECT c FROM pl.alios.model.Category c WHERE c.mainCategory IS NULL");
			categories = q.getResultList();

			for(Category c :categories){
				c.getSubCategories().size();
			}
		}catch(Exception e2){
			logger.error("MYERROR : " + e2);
			throw e2;
		}finally {
			  em.close();
		}
		return categories;
	}

	public void saveNewCategory(String newSubCategory) throws Exception {
		logger.info("Zapis nowej katagori : " + newSubCategory);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				Category category = new Category();
				category.setDisplayableName(newSubCategory);
				category.setName(newSubCategory);
				category.setActive(true);
				em.persist(category);
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

	public void saveNewSubCategory(String newSubCategory, Category selectedCategory)  {
		logger.info("Zapis nowej P.O.D.-katagori : " + newSubCategory);
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				Category category = new Category();
				category.setDisplayableName(newSubCategory);
				category.setName(newSubCategory);
				category.setMainCategory(selectedCategory);
				category.setActive(true);
				em.persist(category);
				t.commit();
			} catch(Exception e){
				logger.error("Nie powiodło sie dodanie nowej pod kategori : " + e);
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
	}

	public void changeCategories(List<Category> categories) {
		logger.info("Zmiana danych kategori");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				for(Category c : categories){
					for(Category c1 : c.getSubCategories()){
						em.merge(c1);
					}
					em.merge(c);
				}
				t.commit();
			} catch(Exception e){
				logger.error("Nie powiodło sie dodanie nowej pod kategori : " + e);
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
		
	}

	public void remove(String categoryId) throws Exception {
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try {
			EntityTransaction t = em.getTransaction();
			try {
				t.begin();
				Query q = em.createQuery("DELETE FROM pl.alios.model.Category c WHERE c.id = :id");
				q.setParameter("id", Long.valueOf(categoryId));
				q.executeUpdate();
				t.commit();
			} catch(Exception e){
				logger.error("Nie powiodło sie dodanie nowej pod kategori : " + e);
				throw e;
			} finally {
				if (t.isActive()) t.rollback();
			}
		} finally {
			em.close();
		}
	}

}
