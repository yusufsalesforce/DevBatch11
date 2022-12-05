public class Student11 {
    
    public static integer ogrenciSayisi = 0;
    public integer oSayisi = 0;
    public String firstName;
    public String lastName;
    private String schoolName = 'Dream School';
    public String className;
    public String language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public Integer mathGrade;
    public Integer fenGrade;
    
    public Student11(){
        ogrenciSayisi++;
        oSayisi++;
        system.debug('yeni bir kayıt yapıldı. Toplam öğrencisayınız ' + ogrenciSayisi);
        System.debug('Static olmayan ogrenci sayısı ' + oSayisi);
    }

    public Student11(String fName, String lName, integer ingNot){
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNot;

    }
}

