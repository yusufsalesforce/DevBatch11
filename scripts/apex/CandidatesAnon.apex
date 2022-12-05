
Candidates.CompanyName = 'softinnovas';
Candidates.printCandidatesInfo();
System.debug('Start count of candidates ' + Candidates.countCandidates);

Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.Name = 'Elanie';
c2.Gender = 'Female';
c2.printCandidate();

Candidates.CompanyName = 'Vandelay Industries';

Candidates c3 = new Candidates();
c3.Name = 'Kramer';
c3.Gender = 'Male';
c3.printCandidate();

System.debug('------');
c1.printCandidate();
System.debug('-------');
c2.printCandidate();
System.debug('-------');
Candidates.printCandidatesInfo();


Candidates c4 = new Candidates();
c4.Name = 'Elanie';
c4.Gender = 'Female';
c4.printCandidate();

system.debug('END count of candidates = ' + Candidates.countCandidates);