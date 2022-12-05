public class StudentMarksheet {
    public void showMarksheetUsingDatatype(){
        String firstName = 'Joseph';
        String lastName = 'hunter';
        Integer mathematics = 100;
        Integer english = 70;
        Integer chemistry = 85;

        system.debug(firstName + lastName + ' Math grade is ' + mathematics + ' English grade is ' + english + ' Chemistry grade is ' + chemistry);
    }
    public void showMarksheetUsingObject(){
        object firstName1 = 'Yusuf';
        object lastName1 = 'AVCI';
        object fullName = firstName1 + ' ' + lastName1;

        object mathematics1 = 90;
        object english1 = 90;
        object chemistry1 = 90;
        system.debug( fullName + ' Math grade is ' + mathematics1 + ' English grade is ' + english1 + ' Chemistry grade is ' + chemistry1);
    }
}

/**Create a apex class:
Class name - StudentMarksheet
Methods -
1. showMarksheetUsingDatatype
	a. firstName
	b. lastName
	c. mathematics
	d. english
	e. chemistry
In the method, display the student name and their marks in each subject.
(Note: Create variables using data types)
	
2. showMarksheetUsingObject
	a. firstName
	b. lastName
	c. mathematics
	d. english
	e. chemistry
In the method, display the student name and their marks in each subject.
(Note: Create variables using object data) */