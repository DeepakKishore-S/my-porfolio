class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Python for Data Science',
    organization: 'NPTEL',
    date: 'Feb 2020',
    skills: 'Data Science',
    credential: 'NPTEL20CS36S1806515',
  ),
  CertificateModel(
    name: 'Programming Data Structure and Algorithms using Python',
    organization: 'NPTEL',
    date: 'Sep 2019',
    skills: 'Python (Programming Language), Data Structures, Algorithms',
    credential: 'NPTEL19CS40S21182362',
  ),
];
