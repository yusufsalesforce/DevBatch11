
Student11 student1 = new Student11();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className = '6E';
student1.language = 'English';
student1.art = true;
student1.sport = false;
student1.ingGrade = 95;
student1.mathGrade = 92;
student1.fenGrade = 90;
System.debug(student1);

Student11 student2 = new Student11();
student2.firstName = 'John';
student2.lastName = 'Doe';
student2.className = '7E';
student2.language = 'Spanish';
student2.art = true;
student2.sport = false;
student2.ingGrade = 90;
student2.mathGrade = 82;
student2.fenGrade = 90;
System.debug(student2);

// class adı ile bir liste oluşturuyoruz.
System.debug('=====class listesi');
List<Student11> studentsList = new List<Student11>();
studentsList.add(student1);
studentsList.add(student2);
System.debug('studentsList => ' + studentsList);


for (Student11 eleman : studentsList) {
    System.debug(eleman);
}
