package DAO;
import VO.BloodtypeVO;
import VO.StateVO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class BloodtypeDAO {
	public void insert(BloodtypeVO bloodtypevoobj) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(bloodtypevoobj);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List search() {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from BloodtypeVO where deleteStatus='Active'");
			ls=q.list();
			
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	
	public List edit(BloodtypeVO bloodtypevoobj) {
		List ls=null; 
		try
		{
			System.out.println("bloodtype dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from BloodtypeVO where bloodtypeId ='"+bloodtypevoobj.getBloodtypeId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void update(BloodtypeVO bloodtypevoobj ) {
		try
		{
			System.out.println("bloodtype update dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(bloodtypevoobj);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public void Delete(BloodtypeVO bloodtypevoobj) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update BloodtypeVO set deleteStatus='DeActive' where bloodtypeId='"+bloodtypevoobj.getBloodtypeId()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}
}
