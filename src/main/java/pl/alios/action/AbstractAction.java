package pl.alios.action;

import pl.alios.model.dao.adapter.DBAdapter;

import com.opensymphony.xwork2.ActionSupport;

public class AbstractAction extends ActionSupport {
	
	private static final long serialVersionUID = -7726075339150994794L;

	
	public DBAdapter dbAdapter;

	public DBAdapter getDbAdapter() {
		return dbAdapter;
	}

	public void setDbAdapter(DBAdapter dbAdapter) {
		this.dbAdapter = dbAdapter;
	}

	
}
