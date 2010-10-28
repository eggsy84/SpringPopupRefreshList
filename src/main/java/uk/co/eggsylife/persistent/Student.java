/**
 * 
 */
package uk.co.eggsylife.persistent;

/**
 * @author eggsy
 *
 */
public class Student {

	private int studentNumber = 0;
	private String firstName = null;
	private String lastName = null;
	
	
	public int getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(int studentNumber) {
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
