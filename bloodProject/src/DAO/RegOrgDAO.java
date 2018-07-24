package DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.RegOrgVO;

public class RegOrgDAO {
	public void insert(RegOrgVO regorgvo) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(regorgvo);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
}
	}
