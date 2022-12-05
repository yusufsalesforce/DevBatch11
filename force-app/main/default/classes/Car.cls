//created a class.
public class Car {
    //public class variable
    public string carColor = '';
    public string carName = '';

    //if we don't have any access modifier, by default it is PRIVATE
    integer maxSpeed = 150; 


    public Datetime switchOn(){
        Datetime switchOnTime = Datetime.now();
        system.debug('starting the car');
        return switchOnTime;
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color ' + carColor);
    }

    public void driveAtMaxSpeed(){
        String drivingDescription = 'Driving '+carName+' at '+maxSpeed + ' km/hr';
        System.debug(drivingDescription);

    }
}

//SAVE CLASS.
//right click. > sfdx deploy.

//class, we deploy.
//anonymous apex, we execute.