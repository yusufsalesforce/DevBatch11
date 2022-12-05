public class ogrenci11 {


    public static integer ogrenciSayisi = 0;
    //public integer oSayisi = 0;

    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public string language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public Integer fenGrade;

    public ogrenci11() {
        ogrenciSayisi++;
        //oSayisi++;
        System.debug('yeni bir kayit yapildi. Ogrenci sayimiz : ' + ogrenciSayisi);
        //System.debug('statik olmayan ogrenci sayisi = ' + oSayisi);
    }

        public ogrenci11(string fName, string lName, integer ingNot){
        //this() parametresiz constructoru calistirir..
        this();
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNot;
    }
    /* public ogrenci11(integer hngNot,string cName, string hName){
        this();
        this.firstName = cName;
        this.lastName = hName;
        this.ingGrade = hngNot;
    }
    public ogrenci11(string fName, integer ingNot, string lName){
        this();
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNot;
    }

    public ogrenci11(string fName, string lName, integer ingNot,Integer fenNot){
        this();
        this.firstName = fName;
        this.lastName = lName;
        this.ingGrade = ingNot;
        this.fenGrade = fenNot;
    } */

}


//^^ sadece gönderdiğimiz değerleri gösteren bir liste yapamazmıyız ?

//^^ ogrenci11:[art=null, className=null, fenGrade=null, firstName=Lisa, ingGrade=95, language=null, lastName=Fire, mathGrade=null, ogrenciSayisi=1, schoolName=Dream School, sport=null] */


