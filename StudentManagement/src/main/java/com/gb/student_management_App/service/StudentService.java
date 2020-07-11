package com.gb.student_management_App.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.gb.student_management_App.bean.Student;
import com.gb.student_management_App.dao.StudentDao;

@Service
@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
public class StudentService {

	@Autowired
	private StudentDao studentDao;

	@javax.transaction.Transactional
	public void deleteStudent(int studentId) {
		studentDao.deleteStudent(studentId);
	}

	@javax.transaction.Transactional
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}

	public List<Student> getStudentList(int pageId) {
		return studentDao.getStudentList(pageId);

	}

	public Student getStudentById(int studentId) {
		return studentDao.getStudentById(studentId);

	}

	public void saveStudent(Student student) {
		studentDao.saveStudent(student);
	}

}
