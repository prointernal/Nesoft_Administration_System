package Controller;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

public class LocaleAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Action(value = "locale1", results={@Result(location = "AdminLogin.jsp", name = "")})
	public String execute() {
		return "success";
	}
	
	@Action(value = "locale", results={@Result(location = "AdminRegister.jsp", name = "")})
	public String register() {
		return "success";
	}
}
