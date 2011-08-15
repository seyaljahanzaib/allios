package pl.alios.utils;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class HibernateUtil {

	
	private static final HibernateUtil singleton = new HibernateUtil();
	protected EntityManagerFactory emf;

	public static HibernateUtil getInstance() {
		return singleton;
	}

	private HibernateUtil() {
	}

	public EntityManagerFactory getEntityManagerFactory() {
		if (emf == null)
			createEntityManagerFactory();
		return emf;
	}

	public void closeEntityManagerFactory() {
		if (emf != null) {
			emf.close();
			emf = null;
		}
	}

	protected void createEntityManagerFactory() {
		this.emf = Persistence.createEntityManagerFactory("AliosPU");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	public static final ThreadLocal session = new ThreadLocal();
//	private static final SessionFactory sessionFactory;
//
//	static {
//		AnnotationConfiguration ac = new AnnotationConfiguration()
//				.addAnnotatedClass(pl.alios.model.Category.class)
//				.addAnnotatedClass(pl.alios.model.Customer.class)
//				.addAnnotatedClass(pl.alios.model.Order.class)
//				.addAnnotatedClass(pl.alios.model.OrderItem.class)
//				.addAnnotatedClass(pl.alios.model.Product.class)
//				.addAnnotatedClass(pl.alios.model.Property.class);
//
//		sessionFactory = ac.configure("hibernate.cfg.xml").buildSessionFactory();
//	}
//	
//	
//    public static Session currentSession() throws HibernateException {
//        Session s = (Session) session.get();
//        if (s == null ) {
//            //|| ! s.isOpen() ) {
//            s = sessionFactory.openSession();
//            if((s instanceof SessionImpl)){
//                ((SessionImpl)s).setAutoClear(true);
//            }
//            session.set(s);
//        }
//        return s;
//    }
//
//    public static void closeSession() {
//        Session s = (Session) session.get();
//        if (s != null ) {
//            if (s.isOpen()) s.close();
//            session.set( null );
//        }
//    }
	
}
