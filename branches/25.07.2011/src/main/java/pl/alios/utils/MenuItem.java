package pl.alios.utils;
import java.util.ArrayList;


public class MenuItem {
	
	public MenuItem() {
		items = new ArrayList<MenuItem>();
	}

	private String dispalyName;
	private String category;
	private ArrayList<MenuItem> items;
	
	
	public String getDispalyName() {
		return dispalyName;
	}
	public void setDispalyName(String dispalyName) {
		this.dispalyName = dispalyName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public ArrayList<MenuItem> getItems() {
		return items;
	}
	public void setItems(ArrayList<MenuItem> items) {
		this.items = items;
	}
}
