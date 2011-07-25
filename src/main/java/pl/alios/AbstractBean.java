package pl.alios;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;

public class AbstractBean implements InitializingBean {

	@Override
	public void afterPropertiesSet() throws Exception {
		
		initLoger();

	}
	
	private String daniel;

	private void initLoger() {

		Logger logger  = Logger.getLogger(this.getClass());
		logger.info("Sie pisze");
//		PropertyConfigurator.configure(log4jInitFile);
	}

	public String getDaniel() {
		return daniel;
	}

	public void setDaniel(String daniel) {
		this.daniel = daniel;
	}
	
	
	
}
