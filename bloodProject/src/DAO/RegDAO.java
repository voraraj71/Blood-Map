package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BloodproofPhoto;
import VO.FileVO;
import VO.LoginVO;
import VO.RegOrgVO;
import VO.RegVO;
import VO.RequestUserVO;

public class RegDAO {
	public void insert(RegVO regvo) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(regvo);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List search(RegVO regVO) {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}

	public List SearchUser(RegVO regvo) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO where loginvo='"+regvo.getLoginvo().getLoginId()+"' ");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public void update(RegVO regvoobj ) {
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(regvoobj);
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}

}
	
	public List viewUser() {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	
	public List viewImage() {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from FileVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	
	public List userDetails() {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}

	public void insertAttachment(FileVO attechmentVO) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(attechmentVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}

	public void insertAttachment(BloodproofPhoto VO) {
		// TODO Auto-generated method stub
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(VO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}

	public List viewImagebyDetail(FileVO fileVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from FileVO where regvo='"+fileVO.getRegvo().getRegId()+"' ");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List viewUserByBloodGroup(RegVO regVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO where bloodtypeVO='"+regVO.getBloodtypeVO().getBloodtypeId()+"' ");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public void insertRequest(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		
		
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(requestUserVO);
			
			tr.commit();
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}
	public List viewUserRequest() {
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RequestUserVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}

	public List viewUserRequest(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RequestUserVO where fromUser='"+requestUserVO.getFromUser().getLoginId()+"' ");
			ls=q.list();
			
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchById(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from LoginVO where loginId='"+loginVO.getLoginId()+"' ");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List viewUserRequestFromUser(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RequestUserVO where toUser='"+requestUserVO.getToUser().getLoginId()+"' AND deleteStatus='Active'");
			ls=q.list();
			
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchUserNAme(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from LoginVO where loginId='"+loginVO.getLoginId()+"' ");
			ls=q.list();
			
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchName(RegVO regVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegVO where loginvo='"+regVO.getLoginvo().getLoginId()+"' ");
			ls=q.list();
			
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public List viewOrg() {
		List ls=null; 
		try
		{
			System.out.println("org dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegOrgVO");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}
	public List orgDetails(RegOrgVO regvo) {
		List ls=null; 
		try
		{
			System.out.println("org dtls dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegOrgVO where regOrgId='"+regvo.getRegOrgId()+"'");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
}

	public List viewUserRequestFromUserList(RequestUserVO requestUserVO) {
		// TODO Auto-generated method stub
		List ls=null; 
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RequestUserVO where toUser='"+requestUserVO.getToUser().getLoginId()+"' AND userRequestStatus='Accepted'");
			ls=q.list();
			
			
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>"+ls.size());
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchOrgDetails(RegOrgVO regvo) {
		// TODO Auto-generated method stub

		List ls=null; 
		try
		{
			System.out.println("org dtls dao");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			Query q=session.createQuery("from RegOrgVO where regOrgId='"+regvo.getRegOrgId()+"'");
			ls=q.list();
			session.close();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

}
