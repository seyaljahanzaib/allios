package pl.alios.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.PropertyConfigurator;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import pl.alios.model.Product;
import pl.alios.model.dao.adapter.DBAdapter;

public class Log4JServlet extends HttpServlet {

	private static final long serialVersionUID = 176871291112L;

	public void init() {
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
		List<Product> products = DBAdapter.getInstance().getProductDAO().getAllProducts();
		
		Map<String, ArrayList<Product>> productMap = new HashMap<String, ArrayList<Product>>();
		for(Product product: products){
			if(productMap.get(product.getCategory()) != null){
				productMap.get(product.getCategory()).add(product);
			}else{
				ArrayList<Product> newList = new ArrayList<Product>();
				newList.add(product);
				productMap.put(product.getCategory(), newList);
			}
		}
		getServletContext().setAttribute("products", productMap);
	}
	
	private void initMenu() {
		try {
			SAXReader saxReader = new SAXReader();
			Document document = saxReader.read("c:\\menu.xml");
			List<Node> list = document.selectNodes("//Menu/Item");
			System.out.println("List s : " + list.size());

			ArrayList<MenuItem> lista = new ArrayList<MenuItem>();

			Iterator<Node> iter = list.iterator();
			while (iter.hasNext()) {
				Node node = iter.next();
				MenuItem item = new MenuItem();
				item.setDispalyName(node.selectSingleNode("DispalyName")
						.getText());
				item.setCategory(node.selectSingleNode("Category").getText());

				List<Node> internalItems = node.selectNodes("Item");
				if (internalItems.size() > 0) {
					Iterator<Node> iter2 = internalItems.iterator();
					while (iter2.hasNext()) {
						Node internalNode = iter2.next();
						MenuItem internalItem = new MenuItem();
						internalItem.setDispalyName(internalNode
								.selectSingleNode("DispalyName").getText());
						internalItem.setCategory(internalNode.selectSingleNode(
								"Category").getText());
						item.getItems().add(internalItem);
					}
				}
				lista.add(item);
			}
			getServletContext().setAttribute("menu", lista);
			System.out.println("asdasd");
		} catch (DocumentException e) {
			System.out.println("asdasd");
			e.printStackTrace();
		}
	}
}