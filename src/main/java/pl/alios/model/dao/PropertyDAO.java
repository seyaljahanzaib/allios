package pl.alios.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import pl.alios.model.Property;
import pl.alios.utils.HibernateUtil;

public class PropertyDAO extends AbstarctDAO{

	public Property getValue(String name) throws Exception{
		logger.info("SELECT p FROM pl.alios.model.Property p WHERE p.name = :name");
		EntityManagerFactory emf = HibernateUtil.getInstance().getEntityManagerFactory();
		EntityManager em = emf.createEntityManager();
		try{
			Query query = em.createQuery("SELECT p FROM pl.alios.model.Property p WHERE p.name = :name");
			query.setParameter("name", name);
			Property property = (Property) query.getSingleResult();
			return property;
		}catch(Exception e2){
			logger.error("MYERROR : " + e2);
			throw e2;
		}finally {
			  em.close();
		}

	}
	
	
	
	
	
	
	
	
	
}
