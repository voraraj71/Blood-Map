package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;
import VO.EventVO;

public class EventDAO {
	public void insert(EventVO eventvoobj) {
		System.out.println("in insert dao");
		try
		{
			System.out.println("in insert try");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(eventvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
}
	public List search() {
		
		System.out.println("in search dao");
		List ls=null; 
		try
		{
			System.out.println("in search try");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from EventVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	public List edit(EventVO eventvoobj) {
		List ls=null; 
		try
		{
			System.out.println("event dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from EventVO where eventId ='"+eventvoobj.getEventId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void update(EventVO eventvoobj ) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(eventvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public List loadCity(CityVO cityVO) {
		// TODO Auto-generated method stub
			List ls=null;
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from CityVO where stateVO = '"+cityVO.getStateVO().getStateId()+" ' ");
			ls = q.list();
			tr.commit();
			session.close();
			return ls;
	
	}

}
