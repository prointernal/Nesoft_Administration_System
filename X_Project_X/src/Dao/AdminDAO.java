package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

import Model.Admin;

public class AdminDAO {

	@SessionTarget
	   Session session;

	   @TransactionTarget
	   Transaction transaction;
	   
	   @SuppressWarnings("unchecked")
	
	   public List<Admin> getAdmins() {
		      List<Admin> admins= new ArrayList<Admin>();
		      
		      try { 	  
		         admins= session.createQuery("from Admin").list();
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      transaction.commit();
		      session.close();
		      return admins;
		   }
	   
	   //Register
	public void saveAdmin(Admin admin) {
		      try {
		    	  session.save(admin);
		    	 
		      } catch (Exception e) {
		    	  transaction.rollback();
		    	  e.printStackTrace();
		      }
		    
		   }
	
	//Login
	   public Admin getAdmin(String Admin_Username, String Admin_Password) {
		   Query query = session.createQuery("from Admin where Admin_Username=? and Admin_Password=?");
		   query.setParameter(0, Admin_Username);
		   query.setParameter(1, Admin_Password);
		   Admin admin = (Admin) query.uniqueResult();
		   transaction.commit();
		   session.close();
		   return admin;
		   }
}
	

