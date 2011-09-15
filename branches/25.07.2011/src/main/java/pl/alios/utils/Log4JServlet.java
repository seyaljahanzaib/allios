package pl.alios.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;
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
		
		
		Map<String, ArrayList<Product>> productMap = initProducts();
		initMenu(productMap);
		
		
	}

	private Map<String, ArrayList<Product>> initProducts(){
		List<Product> products = null;
		try {
			products = DBAdapter.getInstance().getProductDAO().getAllProducts(true,"name");
		} catch (Exception e) {
			Logger logger  = Logger.getLogger(this.getClass());
			logger.error("Moja wina : " + e);
			logger.error("Moja wina 2: " + e.getMessage());
			logger.error("Moja wina 3: " + e.getCause());
			logger.error("Moja wina 4: " + e.getStackTrace());
		}
		
		Map<String, ArrayList<Product>> productMap = new HashMap<String, ArrayList<Product>>();
		for(Product product: products){
			if(product.getCategory().getActive().equals(Boolean.FALSE)) continue;
			if(productMap.get(product.getCategory().getId().toString()) != null){
				productMap.get(product.getCategory().getId().toString()).add(product);
				
			}else{
				ArrayList<Product> newList = new ArrayList<Product>();
				newList.add(product);
				productMap.put(product.getCategory().getId().toString(), newList);
			}
			if(product.getCategory() != null && product.getCategory().getMainCategory() != null){
				if(productMap.get(product.getCategory().getMainCategory().getId().toString()) != null){
					productMap.get(product.getCategory().getMainCategory().getId().toString()).add(product);
				}else{
					ArrayList<Product> newList2 = new ArrayList<Product>();
					newList2.add(product);
					productMap.put(product.getCategory().getMainCategory().getId().toString(), newList2);
				}
			}
		}
		getServletContext().setAttribute("products", productMap);
		
		ArrayList<Product> firstPageProducts = new ArrayList<Product>();
		for(Product p : products){
			if(p.getFirstPagePosition() != null){
				firstPageProducts.add(p);
			}
		}
		Collections.sort(firstPageProducts, new Comparator<Product>() {

			@Override
			public int compare(Product p1, Product p2) {
				return p1.getFirstPagePosition() > p2.getFirstPagePosition() ? 1 : -1;
			}
			
		});
		getServletContext().setAttribute("firstPage", firstPageProducts);
		
		return productMap;
	}
	
	private void initMenu(Map<String, ArrayList<Product>> productMap) {
		
		ArrayList<MenuItem> lista = new ArrayList<MenuItem>();
		
		List<Category> categories = null;
		try {
			categories = DBAdapter.getInstance().getCategoryDAO().getMainCategories();
		} catch (Exception e1) {
			Logger logger  = Logger.getLogger(this.getClass());
			e1.printStackTrace();
			logger.error("Moja wina : " + e1);
			logger.error("Moja wina 2: " + e1.getMessage());
			logger.error("Moja wina 3: " + e1.getCause());
			logger.error("Moja wina 4: " + e1.getStackTrace());
			
		}

		for(Category category :  categories){
			System.out.println("Kat name : " + category.getName());
			System.out.println("Kat name : " + category.getSubCategories());
			System.out.println("Kat name : " + category.getSubCategories().size());
			if (category.getActive() == Boolean.FALSE) continue;
			MenuItem item = new MenuItem();
			item.setDispalyName(category.getDisplayableName());
			item.setCategory(String.valueOf(category.getId()));
			int numberOfProducts = 0;
			try{
				numberOfProducts = productMap.get(category.getId().toString()).size();
				for(Product s : productMap.get(category.getId().toString())){
					System.out.println("Prod. Cat Id : "+ s.getProduct_id());
				}
				for(String s : productMap.keySet()){
					System.out.println(s);
				}
				
				System.out.println("Mam : " + numberOfProducts);
			}
			catch(NullPointerException e){}
			
			
			if (category.getSubCategories() != null && category.getSubCategories().size() != 0) {
				
				
				//TODO
				Collections.sort(category.getSubCategories(), new Comparator<Category>() {

					@Override
					public int compare(Category c1, Category c2) {
						return c1.getId() > c2.getId() ? 1 : -1;
					}
					
				});
				
				
				for(Category subcategory :  category.getSubCategories()){
					System.out.println("ROZ");
					if (subcategory.getActive() == Boolean.FALSE) continue;
					MenuItem internalItem = new MenuItem();
					
					int numberOfProducts2 = 0;
					try{
						numberOfProducts2 = productMap.get(subcategory.getId().toString()).size();
					}
					catch(NullPointerException e){}
					
					
//					numberOfProducts += numberOfProducts2;
					System.out.println("Dodaje : " + numberOfProducts2 + " i mam : " + numberOfProducts);
					internalItem.setDispalyName(subcategory.getDisplayableName() + " (" + numberOfProducts2 + ")");
					internalItem.setCategory(String.valueOf(subcategory.getId()));
					item.getItems().add(internalItem);
				}
			}
			item.setDispalyName(category.getDisplayableName() + " (" + numberOfProducts + ")" );
			
			lista.add(item);
		}
		getServletContext().setAttribute("menu", lista);
	}
	
	
}