
List<Lead> lstLead = new List<Lead>();

Lead crt = new Lead();
crt.lastname = 'Cuneyt';
crt.company = 'ABC';
crt.status = 'Open - Not Contacted';
lstLead.add(crt);

Lead crt1 = new Lead();
crt1.lastname = 'Cüneyt 1';
crt1.company = 'ABC 1';
crt1.status = 'Open - Not Contacted';
lstLead.add(crt1);

Lead crt2 = new Lead();
crt2.lastname = 'Cüneyt 2';
crt2.company = 'ABC 2';
crt2.status = 'Working - Contacted';
lstLead.add(crt2);

Lead crt3 = new Lead();
crt3.lastname = 'Cüneyt 3';
crt3.company = 'ABC 3';
crt3.status = 'Closed - Converted';
lstLead.add(crt3);

Lead crt4 = new Lead();
crt4.lastname = 'Cüneyt 3';
crt4.company = 'ABC 4';
crt4.status = 'Closed - Converted';
lstLead.add(crt4);

insert lstLead;

crt.description = 'Field Updated from Anonymous';
crt1.description = 'Field Updated from Anonymous';
crt2.description = 'Field Updated from Anonymous';
crt3.description = 'Field Updated from Anonymous';
crt4.description = 'Field Updated from Anonymous';

