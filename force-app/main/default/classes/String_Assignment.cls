public class String_Assignment {
    public void printAssignment() {
        String myText = 'Thanks for the session on the string';
        System.debug('Mytext length is ' + myText.length());

        String upperText = myText.toUpperCase();
        System.debug(myText);

        Boolean isContain = myText.contains('session');
        System.debug('Is text contain "session" -> ' + isContain);

        Boolean isContain1 = myText.contains('sessions');
        System.debug('Is text contain "sessions" -> ' + isContain1);

        Boolean isContain2 = myText.containsIgnoreCase('SESSION');
        System.debug('Is text contain "SESSION" -> ' + isContain2);
    }
}
