package pl.alios.action.admin;

import java.util.List;

import org.apache.log4j.Logger;

import pl.alios.action.AddToCartAction;
import pl.alios.model.Category;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionSupport;

public class CategoryAdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(AddToCartAction.class);
	
	public CategoryAdminAction() throws Exception {
		categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
		logger.info("categories.size() : "+categories.size());
	}
	
	public String execute(){
		if(init) return "SHOW";
		if(addCategory) return addCategory();
		if(addSubCategory) return addSubCategory();
		if(saveChanges) return saveChanges();
		if(delete) return delete();
		return "ERROR";
	}
	

	private String addCategory() {
		logger.info("ADMIN. Dodawanie nowej kategorii : " + newCategory);
		if(newCategory != null && newCategory.length() > 2){
			try {
				DBAdapter.getInstance().getCategoryDAO().saveNewCategory(newCategory);
				categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
			} catch (Exception e) {
				logger.error("Nie powiodl sie zapis nowej kategorii" + e);
				e.printStackTrace();
			}
		}
		return "SUCCESS";
	}
	
	private String addSubCategory() {
		logger.info("ADMIN. Dodawanie nowej pod-kategorii : " + newSubCategory);
		if(newSubCategory != null && newSubCategory.length() > 2){
			try {
				for(Category c : categories){
					System.out.println("raz : " + c.getId() + " dwa : " + Integer.valueOf(selectedCategory));
					if(c.getId().equals(Long.valueOf(selectedCategory))){
						DBAdapter.getInstance().getCategoryDAO().saveNewSubCategory(newSubCategory, c);
						categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
						break;
					}
				}
			} catch (Exception e) {
				logger.error("Nie powiodl sie zapis nowej pod-kategorii" + e);
				e.printStackTrace();
			}
		}
		return "SUCCESS";
	}
	
	private String saveChanges() {
		logger.info("ADMIN. Zapisywanie zmian dla karegorii");	
		DBAdapter.getInstance().getCategoryDAO().changeCategories(categories);
		return "SUCCESS";
	}	
	private String delete() {
		logger.info("Usuwam kategorie : "+ categoryId);
		try {
			DBAdapter.getInstance().getCategoryDAO().remove(categoryId);
			categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
		} catch (Exception e) {
			this.message = "Nie udalo sie usunac kategori. Usun najpierw produkty i podkategorie";
			return "MESSAGE";
		}
		return "SUCCESS";
	}
	
	private List<Category> categories;
	
	private List<String> activities;

	public List<String> getActivities() {
		return activities;
	}

	public void setActivities(List<String> activities) {
		this.activities = activities;
	}


	private boolean init;
	private boolean addCategory;
	private boolean addSubCategory;
	private boolean saveChanges;
	private boolean delete;
	
	
	private String newCategory;
	private String newSubCategory;
	private String selectedCategory;
	private String categoryId;
	private String message;
	
	public boolean isInit() {
		return init;
	}

	public void setInit(boolean init) {
		this.init = true;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public boolean isAddCategory() {
		return addCategory;
	}

	public void setAddCategory(boolean addCategory) {
		this.addCategory = addCategory;
	}

	public boolean isAddSubCategory() {
		return addSubCategory;
	}

	public void setAddSubCategory(boolean addSubCategory) {
		this.addSubCategory = addSubCategory;
	}

	public boolean isSaveChanges() {
		return saveChanges;
	}

	public void setSaveChanges(boolean saveChanges) {
		this.saveChanges = true;
	}

	public String getNewCategory() {
		return newCategory;
	}

	public void setNewCategory(String newCategory) {
		this.newCategory = newCategory;
	}

	public String getNewSubCategory() {
		return newSubCategory;
	}

	public void setNewSubCategory(String newSubCategory) {
		this.newSubCategory = newSubCategory;
	}

	public String getSelectedCategory() {
		return selectedCategory;
	}

	public void setSelectedCategory(String selectedCategory) {
		this.selectedCategory = selectedCategory;
	}

	public boolean isDelete() {
		return delete;
	}

	public void setDelete(boolean delete) {
		this.delete = true;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
}
