package pl.alios.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.apache.log4j.Logger;

public class AbstarctDAO {

	protected Logger logger  = Logger.getLogger(this.getClass());
	
	static protected EntityManager em;
    static private EntityManagerFactory emf;
    
    public AbstarctDAO(){
        emf = Persistence.createEntityManagerFactory("AliosPU");
        em = emf.createEntityManager();
        
    }
    
    @Override
    protected void finalize() throws Throwable {
        em.close();
        emf.close();
        super.finalize();

    }
}
