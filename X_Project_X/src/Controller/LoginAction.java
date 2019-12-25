package Controller;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Dao.AdminDAO;
import Model.Admin;

public class LoginAction extends ActionSupport implements ModelDriven<Admin> {
	private static final long serialVersionUID = 1L;

	Admin admin = new Admin();
	AdminDAO dao = new AdminDAO();
	

	public String execute() throws Exception{
		admin = dao.getAdmin(admin.getAdmin_Username(), admin.getAdmin_Password());
	      if(admin == null) 
	    	  return "error";
	      else {			
	    	  return "success";
	      }
	   }	

	@Override
	public Admin getModel() {
		return admin;
	}
}



