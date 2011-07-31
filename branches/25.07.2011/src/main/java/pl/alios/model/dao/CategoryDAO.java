package pl.alios.model.dao;

import java.util.List;

import javax.persistence.Query;

import pl.alios.model.Category;

public class CategoryDAO extends AbstarctDAO {

	public List<Category> getMainCategories() {
		logger.info("SELECT c FROM Category c WHERE c.mainCategory IS NULL");
		Query q = em.createQuery("SELECT c FROM pl.alios.model.Category c WHERE c.mainCategory IS NULL");
		List<Category> categories = q.getResultList();
		return categories;
	}

}
