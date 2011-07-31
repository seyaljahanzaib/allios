package pl.alios.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.PropertyConfigurator;

import pl.alios.model.Category;
import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

public class Log4JServlet extends HttpServlet {

	private static final long serialVersionUID = 176871291112L;

	public void init() {
		
	    System.out.println("Total Memory on start : "+Runtime.getRuntime().totalMemory());    
	    System.out.println("Free Memory on start : "+Runtime.getRuntime().freeMemory());
		
		String prefix = getServletContext().getRealPath("/");
		String file = getInitParameter("log4j-init-file");

		if (file != null) {
			PropertyConfigurator.configure(prefix + file);
			System.out.println("Log4J Logging started: " + prefix + file);
		} else {
			System.out.println("Log4J Is not configured for your Application: "
					+ prefix + file);
		}
		initMenu();
		initProducts();
	}

	private void initProducts(){
//		try{
		System.out.println("PR-1");
		List<Product> products = DBAdapter.getInstance().getProductDAO().getAllProducts();
		
		Map<String, ArrayList<Product>> productMap = new HashMap<String, ArrayList<Product>>();
		System.out.println("PR-2");
		for(Product product: products){
			System.out.println("PR-3");
			if(productMap.get(product.getCategory().getId().toString()) != null){
				System.out.println("PR-3-1");
				productMap.get(product.getCategory().getId().toString()).add(product);
				System.out.println("PR-3-2");
				
			}else{
				System.out.println("PR-3-1-1");
				ArrayList<Product> newList = new ArrayList<Product>();
				System.out.println("PR-3-1-2");
				newList.add(product);
				System.out.println("PR-3-1-3");
				productMap.put(product.getCategory().getId().toString(), newList);
				System.out.println("PR-3-1-4");
			}
			System.out.println("PR-4");
			if(product.getCategory() != null && product.getCategory().getMainCategory() != null){
				System.out.println("PR-4-1");
				if(productMap.get(product.getCategory().getMainCategory().getId().toString()) != null){
					System.out.println("PR-4-2");
					productMap.get(product.getCategory().getMainCategory().getId().toString()).add(product);
					System.out.println("PR-4-3");
				}
			}
		}
		
//		}catch(Exception e){
//			System.out.println(e);
//		}
		
		System.out.println("PR-5");
		System.out.println("Produktsy : " + productMap);
		System.out.println("Produktsy size : " + productMap.size());
		
		getServletContext().setAttribute("products", productMap);
		
		for(String s : productMap.keySet()){
			System.out.println("Kat : " + s);
		}
	}
	
	private void initMenu() {
		
		ArrayList<MenuItem> lista = new ArrayList<MenuItem>();
		
		List<Category> categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();

		for(Category category :  categories){
			MenuItem item = new MenuItem();
			item.setDispalyName(category.getName());
			item.setCategory(String.valueOf(category.getId()));
			
			if (category.getSubCategories() != null && category.getSubCategories().size() != 0) {
				for(Category subcategory :  category.getSubCategories()){
					MenuItem internalItem = new MenuItem();
					System.out.println("Subcategory : " + subcategory.getName());
					internalItem.setDispalyName(subcategory.getName());
					internalItem.setCategory(String.valueOf(subcategory.getId()));
					item.getItems().add(internalItem);
				}
			}
			lista.add(item);
		}
		getServletContext().setAttribute("menu", lista);
	}
}