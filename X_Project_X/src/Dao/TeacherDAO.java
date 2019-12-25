package Dao;

import java.util.List;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;

import Model.Teacher;

public class TeacherDAO {

	@SessionTarget
	Session session;

	@TransactionTarget
	Transaction transaction;

	// to list all teacher
	@SuppressWarnings("unchecked")
	public List<Teacher> listTeachers() {
		List<Teacher> teachers = null;

		try {
			teachers = session.createQuery("from Teacher").list();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return teachers;
	}

	// to list a single teacher by ID.
	// --------------------------------------------------
	public Teacher listTeacherById(int Teacher_ID) {
		Teacher teacher = null;
		try {
			teacher = (Teacher) session.get(Teacher.class, Teacher_ID);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return teacher;

	}
	// ---------------------------------------

	// to save or update teacher
	public void saveTeacher(Teacher teacher) {
		try {
			session.save(teacher);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// to update teacher
	public void updateTeacher(Teacher teacher) {
		try {
			session.update(teacher);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// to delete teacher
	public void deleteTeacher(int Teacher_ID) {
		try {
			Teacher teacher = (Teacher) session.get(Teacher.class, Teacher_ID);
			session.delete(teacher);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public List<Teacher> searchName(String name) {
		List<Teacher> teachers = null;

		try {
			teachers = session.createQuery("from Teacher where Teacher_Name LIKE ?").setParameter(0, "%" + name + "%")
					.list();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return teachers;
	}

}
