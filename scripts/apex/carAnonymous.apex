//create object of car class.
//we also call it INSTACE of class.

//ClassName
system.debug('tesla created');
Car tesla = new car(); 
tesla.carName = 'model S';
tesla.carColor = 'Black';
tesla.switchOn();
system.debug('tesla car color -> ' + tesla.carColor);
system.debug('tesla -> ' + tesla);
tesla.drive();
tesla.driveAtMaxSpeed();
system.debug('tesla done');

system.debug('bmw created');
car bmw = new car();
bmw.carName = 'xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw  -> ' + bmw);
bmw.drive();
BMW.driveAtMaxSpeed();
system.debug('bmw done');

car toyota = new car();
toyota.carName = 'Corolla';
toyota.switchOn();
toyota.drive();
toyota.driveAtMaxSpeed();


//System.debug('max speed -> '+ BMW.maxSpeed);
//yorum satırındakini debug da göremedik. çünkü private
