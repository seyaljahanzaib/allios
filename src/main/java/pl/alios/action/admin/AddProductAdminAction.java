package pl.alios.action.admin;

import java.util.List;

import org.apache.log4j.Logger;

import pl.alios.model.Category;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionSupport;

public class AddProductAdminAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logger logger  = Logger.getLogger(AddProductAdminAction.class);
	
	public AddProductAdminAction() throws Exception {
		categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
		product = new Product();
		product.setCategory(new Category());
	}
	
	public String execute(){
		if(init) return "SHOW";
		if(save) return save();
		return "SUCCESS";
	}

	private String save() {
		try {
			DBAdapter.getInstance().getProductDAO().saveProduct(product);
		} catch (Exception e) {
			return "ERROR";
		}
		return "SUCCESS";
	}

	public void validate(){
		//TODO
	}
	
	
	
	
	
	private boolean init;
	private boolean save;
	
	private List<Category> categories;
	private String category;
	private Product product;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean isInit() {
		return init;
	}

	public void setInit(boolean init) {
		this.init = true;
	}

	public boolean isSave() {
		return save;
	}

	public void setSave(boolean save) {
		this.save = true;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
