public class NewCar {

    public Integer currentSpeed = 0;
    public String carType ;
    public String carName ;

    public void startCar(String carName, String carType) {
        System.debug('CarName and CarType => ' + carName + ' ' + carType);
    }

    public void accelerate(Integer x){
        currentSpeed += x;
        System.debug('accelerate => ' + currentSpeed);
    }

    public integer Brake(integer y){
        if (currentSpeed >= y) {
            currentSpeed -= y;
        } else {
            currentSpeed = 0;
        }
        
        //currentSpeed -= y;
        System.debug('Brake => ' + currentSpeed);
        return currentSpeed;
    }

    public void stopCar(){
        currentSpeed = 0;
        System.debug('stopCar ' + currentSpeed);
    }

    public String checkSpeed(){
        string mode;
        if (currentSpeed>0 && currentSpeed<=30) {
            mode = 'City Mode';
        } else if (currentSpeed>=31 && currentSpeed<=60){
            mode = 'Economy Mode';
        } else {
            mode = 'Sport Mode';
        }
        return mode;
    }
}
