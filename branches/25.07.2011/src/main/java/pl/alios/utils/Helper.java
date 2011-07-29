package pl.alios.utils;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;

import pl.alios.model.Order;
import pl.alios.model.OrderItem;

public class Helper {


	public static String prepareInoviceXML(Order order){
		Document document = DocumentFactory.getInstance().createDocument();
		Element inovice 			 = document.addElement("Faktura");
		Element inoviceNumber    	  = inovice.addElement("Numer");
		Element inoviceIssueDate 	  = inovice.addElement("DataWystawienia");
		Element inoviceSaleDate  	  = inovice.addElement("DataSprzedazy");
		Element dateOfPayment  		  = inovice.addElement("TerminPlatnosci");
		Element paymentMethod		  = inovice.addElement("SposobPlatnosci");
		Element customerCode		  = inovice.addElement("KodKlienta");
		
		Element purchaser        	  = inovice.addElement("Nabywca");
		Element purchaserName		= purchaser.addElement("Nazwa");
		Element purchaserAdres		= purchaser.addElement("Adres");
		Element purchaserNIP		= purchaser.addElement("NIP");
		
		Element summary				  = inovice.addElement("Lacznie");
		Element summaryNetto		  = summary.addElement("WartoscNetto");
//		Element summaryVat			  = summary.addElement("VAT");
		Element summaryAmountVat	  = summary.addElement("KwotaVAT");
		Element summaryBrutto		  = summary.addElement("WartoscBrutto");
		
		Element payment				  = inovice.addElement("DoZaplaty");
		Element amount				  = payment.addElement("Kwota");
		Element amountInWords		  = payment.addElement("KwotaSlownie");
		
		Element transport			  = inovice.addElement("Transport");
		Element transportLP			= transport.addElement("LP");
		Element tarnsportNetto		= transport.addElement("WartoscNetto");
		Element tarnsportVat		= transport.addElement("KwotaVAT");
		Element tarnsportBrutto		= transport.addElement("WartoscBrutto");

		inoviceNumber.setText(order.getNumber());
		inoviceIssueDate.setText(formatDate(order.getIssueDate()));
		inoviceSaleDate.setText(formatDate(order.getOrderDate()));
		if(order.getPaymentMethod().equals(Commons.PAYMENT_ON_DELIVERY)){
			dateOfPayment.setText("Zapłacono gotówką");
		}else if(order.getPaymentMethod().equals(Commons.PAYMENT_ADVANCE)){
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(order.getIssueDate());
			calendar.add(Calendar.DAY_OF_MONTH, 3);
			dateOfPayment.setText(formatDate(calendar.getTime()));
		}
		paymentMethod.setText(order.getPaymentMethod());
		customerCode.setText(String.valueOf(order.getCustomer().getCode()));
		purchaserName.setText(order.getCustomer().getCompanyName());
		purchaserAdres.setText(order.getCustomer().getFullAdres());
		purchaserNIP.setText(order.getCustomer().getNip());
		
		summaryNetto.setText(order.getTotalCostNetto());
//		summaryVat
		summaryAmountVat.setText(order.getAmountVatString());
		summaryBrutto.setText(order.getTotalCostBrutto());
		
		amount.setText(order.getTotalCostBrutto());
		amountInWords.setText(AmoutInWords.amountInWorlds(order.getTotalCostBruttoDouble()));
		
		transportLP.setText(String.valueOf(order.getListOfProducts().size()+1));
		tarnsportNetto.setText(order.getTransportNettoString());
		tarnsportVat.setText(order.getTransportVatString());
		tarnsportBrutto.setText(order.getTransportBruttoString());
		
		Element products			  = inovice.addElement("Produkty");
		for(int i = 0; i < order.getListOfProducts().size();i++){
			Element product				  = products.addElement("Produkt");
			Element productNumber		   = product.addElement("LP");
			Element productName			   = product.addElement("Nazwa");
			Element productCount		   = product.addElement("Ilosc");
			Element productUnit			   = product.addElement("JM");
			Element productPriceNetto	   = product.addElement("CennaNetto");
			Element productDiscount		   = product.addElement("Rabat");
			Element productTotalPriceNetto = product.addElement("WartoscNetto");
			Element productVat		  	   = product.addElement("VAT");
			Element productVatAmount	   = product.addElement("KwotaVAT");
			Element productTotalPriceBrutto= product.addElement("WartoscBrutto");
			
			OrderItem item = order.getListOfProducts().get(i);
			
			productNumber.setText(String.valueOf(i+1));
			productName.setText(item.getProduct().getName());
			productCount.setText(String.valueOf(item.getNumberOfItem()));
			productUnit.setText(item.getProduct().getUnit());
			productPriceNetto.setText(item.getPriceNettoString());
			productDiscount.setText("0");
			productTotalPriceNetto.setText(item.getTotalPriceNettoString());
			productVat.setText(String.valueOf(item.getVAT()));
			productVatAmount.setText(item.getAmountVatString());
			productTotalPriceBrutto.setText(item.getTotalPriceBruttoString());
		}
		
		return document.asXML();
	}
	
	
	
	public static String formatDate(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy"); 
		return sdf.format(date);
	}
	public static String formatDate(java.util.Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy"); 
		return sdf.format(date);
	}	
	
	
	
}
