/**
 * 
 */
package uk.co.eggsylife.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import uk.co.eggsylife.persistent.Student;
import uk.co.eggsylife.validation.StudentValidator;

/**
 * @author eggsy@eggsylife.co.uk
 */
@Controller
public class StudentController {

	private static final String STUDENTS_VIEW_KEY = "students.view";
	private static final String STUDENT_EDIT_DIALOG_VIEW_KEY = "studentsListAndEditDialog.view";
	private static final String STUDENT_SAVE_SUCCESS_VIEW_KEY = "studentSaveSuccess.view";
	
	@Autowired
	protected ArrayList<Student> students = null;
	
	@Autowired
	protected StudentValidator studentValidator = null;
	
	
	@RequestMapping(value="/students", method=RequestMethod.GET)
	public String showStudentsList(ModelMap modelMap) {
		modelMap.put("students", students);
		return STUDENTS_VIEW_KEY;
	}
	
	@RequestMapping(value="/students/edit", method=RequestMethod.GET)
	public String showStudentEditForm(ModelMap modelMap) {
		
		// Object class will be used as our
		// form backing object
		Student student = new Student();
		modelMap.addAttribute("student", student);
		
		
		return STUDENT_EDIT_DIALOG_VIEW_KEY;
	}
	
	@RequestMapping(value="/students/edit", method=RequestMethod.POST)
	public String saveStudentEdit(@ModelAttribute Student student, BindingResult errors, ModelMap modelMap) {
		
		studentValidator.validate(student, errors);
		
		if( errors.hasErrors() ) {
			return STUDENT_EDIT_DIALOG_VIEW_KEY;
		}
		else {
			students.add(student);
			
			modelMap.put("students", students);
			
			return STUDENT_SAVE_SUCCESS_VIEW_KEY;
		}
		
		
	}
}
