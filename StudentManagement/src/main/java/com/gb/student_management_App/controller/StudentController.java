package com.gb.student_management_App.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gb.student_management_App.bean.Student;
import com.gb.student_management_App.service.StudentService;

@Component
@Controller
public class StudentController {

	@Autowired
	private StudentService service;
	
	/**
	 * This method returns the addStudent form
	 * @param student
	 * @return
	 */

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView showAddstudentForm(@ModelAttribute Student student) {

		return new ModelAndView("addStudentForm", "student", student);
	}

	
	/**
	 * This method binds and persists the entity
	 * @param student
	 * @return
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String addstudent(@ModelAttribute Student student) {

		service.saveStudent(student);
		return "redirect:/view?pageId=1";

	}

	
	/**
	 * Method to return entity details with pagination
	 * @param pageId
	 * @return
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView viewStudentList(@RequestParam int pageId) {

		List<Student> list = service.getStudentList(pageId);
		return new ModelAndView("viewStudentForm", "list", list);

	}

	/**
	 * this method returns the edit form with values populated
	 * @param studentId
	 * @return
	 */
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView showEditEmpForm(@RequestParam int studentId) {

		Student student = service.getStudentById(studentId);
		return new ModelAndView("editStudentForm", "student", student);

	}

	/**
	 * Method to update already persisted entity
	 * @param student
	 * @return
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatestudent(@ModelAttribute Student student) {

		service.updateStudent(student);
		return "redirect:/view?pageId=1";

	}

	/**
	 * this method deletes already persisted entity based on primary key
	 * @param studentId
	 * @return
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deletestudent(@RequestParam int studentId) {

		service.deleteStudent(studentId);
		return "redirect:/view?pageId=1";

	}
}
