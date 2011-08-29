package pl.alios.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

public class Util {

	public static void  refreshProducts(){
		List<Product> products = null;
		try {
			products = DBAdapter.getInstance().getProductDAO().getAllProducts(true,null);
		} catch (Exception e) {
			System.out.println("ERROR Blad odswierzania");
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
		ServletContext context = ServletActionContext.getServletContext();
		context.setAttribute("products", productMap);
	}
	
	
}
