/**
 * 
 */
package uk.co.eggsylife.persistent;

/**
 * @author eggsy@eggsylife.co.uk
 */
public class Student {

	private Long studentNumber = null;
	private String firstName = null;
	private String lastName = null;
	
	
	public Long getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(Long studentNumber) {
		this.studentNumber = studentNumber;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	
}
