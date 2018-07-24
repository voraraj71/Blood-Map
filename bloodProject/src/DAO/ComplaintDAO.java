package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.ComplaintVO;
import VO.LoginVO;
import VO.StateVO;

public class ComplaintDAO {

	public void insert(ComplaintVO complaintvoobj) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(complaintvoobj);
			
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
			Query q=session.createQuery("from ComplaintVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List<LoginVO> searchAdmin() {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from LoginVO where userType='admin'");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public List edit(ComplaintVO complaintvoobj) {
		List ls=null; 
		try
		{
			System.out.println("complnt dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from ComplaintVO where complaintId ='"+complaintvoobj.getComplaintId()+"'");
			ls=q.list();
					
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public void reply(ComplaintVO complaintvoobj) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(complaintvoobj);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
}