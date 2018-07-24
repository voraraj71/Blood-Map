package DAO;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BloodtypeVO;
import VO.CityVO;
public class CityDAO {
	public void insert(CityVO cityvoobj) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cityvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
}
	
	public List search(CityVO cityVO) {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from CityVO where deleteStatus='Active'");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	
	public List edit(CityVO cityvoobj) {
		List ls=null; 
		try
		{
			System.out.println("city dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from CityVO where cityId ='"+cityvoobj.getCityId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void update(CityVO cityvoobj ) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(cityvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public void Delete(CityVO cityvoobj) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update CityVO set deleteStatus='DeActive' where cityId='"+cityvoobj.getCityId()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}

}