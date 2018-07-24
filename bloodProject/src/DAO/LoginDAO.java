package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.LoginVO;
import VO.RequestUserVO;

public class LoginDAO {

	public void insert(LoginVO v) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(v);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public List authentication(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from LoginVO where userName='"+loginVO.getUserName()+"' AND password='"+loginVO.getPassword()+"'");
			
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List step1(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from LoginVO where userName='"+loginVO.getUserName()+"'");
		    ls=q.list();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public void Step2(LoginVO loginVO) {
		
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update LoginVO set password='"+loginVO.getPassword()+"' where userName='"+loginVO.getUserName()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public void denyRequest(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update RequestUserVO set deleteStatus='DeActive' where fromUser='"+requestUserVO.getFromUser().getLoginId()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public void acceptRequest(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query q=session.createQuery("update RequestUserVO set userRequestStatus='Accepted' where fromUser='"+requestUserVO.getFromUser().getLoginId()+"'");
			q.executeUpdate();
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}

	public List searchEmail(LoginVO fromUser) {
		// TODO Auto-generated method stub
		List ls=new ArrayList();
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from LoginVO where loginId='"+fromUser.getLoginId()+"'");
		    ls=q.list();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
		
	}		

