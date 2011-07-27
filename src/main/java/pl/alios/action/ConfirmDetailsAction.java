package pl.alios.action;

import java.util.Calendar;
import java.util.Map;

import org.apache.log4j.Logger;

import pl.alios.model.Order;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ConfirmDetailsAction extends ActionSupport {

	private static final long serialVersionUID = 132121321L;
	private Logger logger  = Logger.getLogger(ConfirmDetailsAction.class);

	public String execute(){
		if(back)
			return "BACK";
		if(next)
			return next();
		return "ERROR";
	}
	
	
	public String next(){
		Map<String,Object> sessionAttr = ActionContext.getContext().getSession();
		Order order = (Order) sessionAttr.get("order");
		
		if(payment.equals("1")){
			order.setPaymentMethod("przy odbiorze");
		}else if(payment.equals("2")){
			order.setPaymentMethod("przedpłata na konto");
		}
		
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, 2);
		
		if(Calendar.getInstance().get(Calendar.DAY_OF_WEEK) == 6){
			calendar.add(Calendar.DAY_OF_MONTH, 2);
		}
		if(Calendar.getInstance().get(Calendar.DAY_OF_WEEK) == 7){
			calendar.add(Calendar.DAY_OF_MONTH, 1);
		}

		order.setDeliveryDate(new java.sql.Date(calendar.getTimeInMillis()));
		
		logger.info("payment : " + payment);
		logger.info("adressChosse : " + adressChosse);
		return "SUCCESS";
	}
	
	
	private boolean next;
	private boolean back;
	private String payment;
	private String adressChosse;

	public boolean isNext() {return next;}
	public void setNext(boolean next) {this.next = true;}
	public boolean isBack() {return back;}
	public void setBack(boolean back) {this.back = true;}

	public String getPayment() {return payment;}
	public void setPayment(String payment) {this.payment = payment;}
	public String getAdressChosse() {return adressChosse;}
	public void setAdressChosse(String adressChosse) {this.adressChosse = adressChosse;}
	
	
	
	
}