package Controller;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Dao.AdminDAO;
import Model.Admin;

public class RegisterAction extends ActionSupport implements ModelDriven<Admin> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Admin admin= new Admin();
	List<Admin> admins= new ArrayList<Admin>();
	AdminDAO dao = new AdminDAO();
	
	
	
	public String saveAdmin() {
		dao.saveAdmin(admin);
		System.out.println("inserted");
		return "success";
	}

	public Admin getModel() {
	      return admin;
	   }
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(List<Admin> admins) {
		this.admins = admins;
	}

}