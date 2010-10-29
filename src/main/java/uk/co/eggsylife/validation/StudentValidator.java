/**
 * 
 */
package uk.co.eggsylife.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import uk.co.eggsylife.persistent.Student;

/**
 * @author eggsy
 *
 */
public class StudentValidator implements Validator {

	/* (non-Javadoc)
	 * @see org.springframework.validation.Validator#supports(java.lang.Class)
	 */
	@Override
	public boolean supports(Class<?> clazz) {
		return Student.class.equals(clazz);
	}

	/* (non-Javadoc)
	 * @see org.springframework.validation.Validator#validate(java.lang.Object, org.springframework.validation.Errors)
	 */
	@Override
	public void validate(Object obj, Errors errors) {
		Student student = (Student)obj;

		if( student.getFirstName() == null || student.getFirstName().length() == 0 ) {
			errors.rejectValue("firstName", "student.first.name.empty");
		}
		
		if( student.getLastName() == null || student.getLastName().length() == 0 ) {
			errors.rejectValue("lastName", "student.last.name.empty");
		}
	}

}
