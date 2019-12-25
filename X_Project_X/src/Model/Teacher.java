package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;


@Entity
@Table(name = "teacher")
public class Teacher {

	@Id
	@GeneratedValue

	private int Teacher_ID;
	private String Teacher_Name;
	private String Teacher_Email;
	private String Teacher_Gender;
	private String Teacher_Subject;
	private String Teacher_PhoneNumber;
	
	@Column(name ="Teacher_ID")
	public int getTeacher_ID() {
		return Teacher_ID;
	}
	
	@Column(name = "Teacher_Name")
	@RequiredStringValidator(message="Please input the name")
	public String getTeacher_Name() {
		return Teacher_Name;
	}
	
	@Column(name = "Teacher_Email")
	@RequiredStringValidator(message="Please input the email")
	public String getTeacher_Email() {
		return Teacher_Email;
	}
	
	@Column(name = "Teacher_Gender")
	@RequiredStringValidator(message="Please input the gender")
	public String getTeacher_Gender() {
		return Teacher_Gender;
	}
	
	@Column(name = "Teacher_Subject")
	@RequiredStringValidator(message="Please input the string")
	public String getTeacher_Subject() {
		return Teacher_Subject;
	}
	
	@Column(name = "Teacher_PhoneNumber")
	@RequiredStringValidator(message="Please input the number")
	public String getTeacher_PhoneNumber() {
		return Teacher_PhoneNumber;
	}

	public void setTeacher_ID(int teacher_ID) {
		this.Teacher_ID = teacher_ID;
	}

	public void setTeacher_Name(String teacher_Name) {
		this.Teacher_Name = teacher_Name;
	}

	public void setTeacher_Email(String teacher_Email) {
		this.Teacher_Email = teacher_Email;
	}

	public void setTeacher_Gender(String teacher_Gender) {
		this.Teacher_Gender = teacher_Gender;
	}

	public void setTeacher_Subject(String teacher_Subject) {
		this.Teacher_Subject = teacher_Subject;
	}

	public void setTeacher_PhoneNumber(String teacher_PhoneNumber) {
		this.Teacher_PhoneNumber = teacher_PhoneNumber;
	}
	
	
	
}
