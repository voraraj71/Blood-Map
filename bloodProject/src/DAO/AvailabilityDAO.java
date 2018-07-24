package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AvailabilityVO;
import VO.CityVO;

public class AvailabilityDAO {

	public void insert(AvailabilityVO availabilityvoobj) {
		System.out.println("insert dao");
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(availabilityvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}

}
	public List search(AvailabilityVO availabilityVO) {
		System.out.println("search dao");
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from AvailabilityVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;

}
	public List edit(AvailabilityVO availabilityvoobj) {
		List ls=null; 
		try
		{
			System.out.println("edit dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from AvailabilityVO where availabilityId ='"+availabilityvoobj.getAvailabilityId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void update(AvailabilityVO availabilityvoobj) {
		try
		{
			System.out.println("update dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(availabilityvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

}