package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;

public class BloodbankDAO 
{

	public List loadCity(CityVO cityVO) 
	{
		
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
