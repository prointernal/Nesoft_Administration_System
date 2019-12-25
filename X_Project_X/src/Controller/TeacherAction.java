	package Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.validator.annotations.VisitorFieldValidator;

import Dao.TeacherDAO;
import Model.Teacher;

public class TeacherAction extends ActionSupport implements ModelDriven<Teacher> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Teacher teacher = new Teacher();
	List<Teacher> teacherList = new ArrayList<Teacher>();
	TeacherDAO dao = new TeacherDAO();
	
	public Teacher getModel() {
	      return teacher;
	   }
	
	public String saveTeacher() {	
	      dao.saveTeacher(teacher);          
	      return "success";
	   }

	public String listTeachers(){
	      teacherList = dao.listTeachers();
	      return "success";
	   }
	
	public String deleteTeacher() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		dao.deleteTeacher(Integer.parseInt(request.getParameter("Teacher_ID")));
		return "success";
	}
	
	public String updateTeacher() {
		dao.updateTeacher(teacher);
		return "success";
	}
	
	public String searchName() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		teacherList = dao.searchName(request.getParameter("name"));
		return "success";
	}
	
	public String editTeacher() {
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		teacher = dao.listTeacherById(Integer.parseInt(request.getParameter("Teacher_ID")));
		return "success";
	}
	
//	@VisitorFieldValidator(appendPrefix = true)
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public List<Teacher> getTeachers() {
		return teacherList;
	}

	public void setTeachers(List<Teacher> teachers) {
		this.teacherList = teachers;
	}
}