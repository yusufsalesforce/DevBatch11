
Map<String, Integer> marksObtainInMaths = new Map<String, Integer>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);

System.debug(marksObtainInMaths);

for(String itemKey : marksObtainInMaths.keySet()){
    System.debug(itemKey);
}

for(integer itemVal : marksObtainInMaths.values()){
    System.debug(itemVal);
}

Set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
System.debug(uniqueRollNumberSet);

List<Integer> marksObtainList = marksObtainInMaths.values();
System.debug(marksObtainList);


for(String item : marksObtainInMaths.keySet()){
    //System.debug(marksObtainInMaths.get(item));
    Integer grade = marksObtainInMaths.get(item);

    if(grade<20){
        System.debug(item + ' => ' + grade + ' is not qualified for next class');
    } else {
    System.debug(item + ' => ' + grade + ' Passed');
    }

}

