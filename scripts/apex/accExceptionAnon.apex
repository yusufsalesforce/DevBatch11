

try{
    string s ;
    s.toLowerCase();
    account ac = new account();
    insert ac;
}catch(DmlException dex){
    System.debug('DML went wrong');
}catch(exception ex){
    System.debug('someting went wrong buddy');
    System.debug('ex -> ' + ex.getMessage());
    System.debug('ex line number : ' + ex.getLineNumber());
}

System.debug('Apex is SIMPLE');


try{
    account ac = new account();
    insert ac;
}catch(exception ex){
    System.debug('someting went wrong buddy');
    System.debug('ex -> ' + ex.getMessage());
    System.debug('ex line number : ' + ex.getLineNumber());
}