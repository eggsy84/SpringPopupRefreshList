// Copyright 2010 eggsylife.co.uk
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
package uk.co.eggsylife.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import uk.co.eggsylife.persistent.Student;

/**
 * @author eggsy@eggsylife.co.uk
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
