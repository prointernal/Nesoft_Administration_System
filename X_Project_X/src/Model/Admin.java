package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "admin")
public class Admin {
	
	@Id
	@GeneratedValue	
	
	@Column(name = "Admin_ID")
	private int Admin_ID;
	
	@Column(name = "Admin_Username")	
	private String Admin_Username;
	
	@Column(name = "Admin_Password")
	private String Admin_Password;
	


	public int getAdmin_ID() {
		return Admin_ID;
	}
	
	public void setAdmin_ID(int admin_ID) {
		this.Admin_ID = admin_ID;
	}
	
	public String getAdmin_Username() {
		return Admin_Username;
	}
	public void setAdmin_Username(String admin_Username) {
		this.Admin_Username = admin_Username;
	}
	
	public String getAdmin_Password() {
		return Admin_Password;
	}
	public void setAdmin_Password(String admin_Password) {
		this.Admin_Password = admin_Password;
	}
}
