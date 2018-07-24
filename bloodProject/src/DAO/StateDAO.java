package DAO;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;
import VO.StateVO;

public class StateDAO {
	public void insert(StateVO statevoobj) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(statevoobj);
			
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
			System.out.println("srch mthd dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from StateVO where deleteStatus='Active'");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	
	public List edit(StateVO statevoobj) {
		List ls=null; 
		try
		{
			System.out.println("state dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from StateVO where stateId ='"+statevoobj.getStateId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void update(StateVO statevoobj ) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(statevoobj);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public void Delete(StateVO statevoobj) {
		// TODO Auto-generated method stub
		try
		{
			System.out.println("dlt dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update StateVO set deleteStatus='DeActive' where stateId='"+statevoobj.getStateId()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}
	
}