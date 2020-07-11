package com.gb.student_management_App.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gb.student_management_App.bean.Student;

@Repository
public class StudentDao {

	@Autowired
	private SessionFactory factory;

	public void saveStudent(Student student) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(student);
		transaction.commit();
		session.close();
	}

	public void deleteStudent(int studentId) {
		factory.getCurrentSession().createQuery("delete from Student where studentId= " + studentId).executeUpdate();
	}

	public void updateStudent(Student student) {
		factory.getCurrentSession().createQuery("update Student set studentName='" + student.getStudentName()
				+ "' , mailId='" + student.getMailId() + "' where studentId= " + student.getStudentId())
				.executeUpdate();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	public List<Student> getStudentList(int pageId) {
		Criteria criteria = factory.getCurrentSession().createCriteria(Student.class);
		criteria.setMaxResults(5);

		return criteria.setFirstResult((pageId - 1) * 5).list();

	}

	public Student getStudentById(int studentId) {
		return factory.getCurrentSession().get(Student.class, studentId);

	}
}
