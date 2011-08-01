package pl.alios.model.dao.adapter;

import pl.alios.model.dao.CategoryDAO;
import pl.alios.model.dao.CustomerDAO;
import pl.alios.model.dao.OrderDAO;
import pl.alios.model.dao.ProductDAO;
import pl.alios.model.dao.PropertyDAO;

public class DBAdapter {
	
	private CustomerDAO customerDao;
	private ProductDAO productDAO;
	private OrderDAO orderDAO;
	private CategoryDAO categoryDAO;
	private PropertyDAO propertyDAO;
    
    private DBAdapter() {
    	customerDao = new CustomerDAO();
    	productDAO = new ProductDAO();
    	orderDAO = new OrderDAO();
    	categoryDAO = new CategoryDAO();
    	propertyDAO = new PropertyDAO();
    }
	
	public CustomerDAO getCustomerDao() {return customerDao;}
    public ProductDAO getProductDAO() {return productDAO;}
	public OrderDAO getOrderDAO() {return orderDAO;}
	public CategoryDAO getCategoryDAO() {return categoryDAO;}
	public PropertyDAO getPropertyDAO() {return propertyDAO;}	
	
	
	//------------- SINGLETON ------------------------




	private static final DBAdapter INSTANCE = new DBAdapter();
	
    public static DBAdapter getInstance() {
        return INSTANCE;
    }
}
