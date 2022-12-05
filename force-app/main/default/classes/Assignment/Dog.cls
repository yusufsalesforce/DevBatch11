public class Dog {
    public String name;
    public String color;
    public Integer age = 0;
    public static Integer count = 0;

    public Dog() {
        count++;
        age = 1;
        checkAge();
        showDogCount();
    }

    public Dog(String n,String c,Integer a){
        name = n;
        color = c;
        age = a;
        count++;
        checkAge();
        showDogCount();
    }

    public static void showDogCount(){
        System.debug('total number of dogs => '+ count);
    }
    
    public void checkAge(){
        
        if (age == 0 && age == 1) {
            System.debug('Puppy Dog');
        } else if (age > 1 && age <=3) {
            System.debug('Young Dog');
        } else if (age>3 && age<=5 ){
            System.debug('Adult  Dog');
        } else if (age>5){
            System.debug('Old Dog');
        } else {
            System.debug('Age must be positive');
        }
    }
    /* public String checkAge(){
        String period;
        if (age == 0 && age == 1) {
            period = 'Puppy Dog';
        } else if (age > 1 && age <=3) {
            period = 'Young Dog';
        } else if (age>3 && age<=5 ){
            period = 'Adult  Dog';
        } else if (age>5){
            period = 'Old Dog';
        } else {
            System.debug('Age must be positive');
        }
        return period;
    } */
}
