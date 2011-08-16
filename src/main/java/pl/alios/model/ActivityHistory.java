//package pl.alios.model;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//
//@Entity(name="aktywnosci_zamowien")
//public class ActivityHistory {
//	
//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	private Long activityID;
//	
//	@ManyToOne
//	@JoinColumn(name="orderID")
//	private Order order;
//	
//	private String action;
//	
//	private String admin;
//
//	
//	
//	
//	
//	
//	public Long getActivityID() {return activityID;}
//	public void setActivityID(Long activityID) {this.activityID = activityID;}
//	public Order getOrder() {return order;}
//	public void setOrder(Order order) {this.order = order;}
//	public String getAction() {return action;}
//	public void setAction(String action) {this.action = action;}
//	public String getAdmin() {return admin;}
//	public void setAdmin(String admin) {this.admin = admin;}
//	
//	
//
//}
