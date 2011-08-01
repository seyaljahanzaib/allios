package pl.alios.model.dao;

import javax.persistence.Query;

import pl.alios.model.Property;

public class PropertyDAO extends AbstarctDAO{

	public Property getValue(String name){
		logger.info("SELECT p FROM pl.alios.model.Property p WHERE p.name = :name");
		Query query = em.createQuery("SELECT p FROM pl.alios.model.Property p WHERE p.name = :name");
		query.setParameter("name", name);
		Property property = (Property) query.getSingleResult();
		return property;
	}
	
	
	
	
	
	
	
	
	
}
