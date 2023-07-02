// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:jopsearch/resources/string_manger.dart';

class CompanyModels {
  String img;
  String name;

  String locations;
  String jobs;
  String pays;
  String jobType;
  String jobsAbout;
  List minimumQualificationsGoogle;
  List responsibilitiesGoogle;
  CompanyModels({
    required this.img,
    required this.name,
    required this.locations,
    required this.jobs,
    required this.pays,
    required this.jobType,
    required this.jobsAbout,
    required this.minimumQualificationsGoogle,
    required this.responsibilitiesGoogle,
  });
}

List<CompanyModels> companyData = [
  CompanyModels(
      img: 'assets/google.png',
      name: 'Google',
      locations: 'california',
      jobs: 'Software engineers',
      pays: '\$150k \$180k /year',
      jobType: 'Remote',
      jobsAbout: googleJobsAbout,
      minimumQualificationsGoogle: minimumQualificationsGoogle,
      responsibilitiesGoogle: responsibilitiesGoogle),
  CompanyModels(
      img: 'assets/apple.png',
      name: 'Apple',
      locations: 'new york city',
      jobs: 'Ui/Ux Desginer',
      pays: '\$50k \$80k /year',
      jobType: 'part time',
      jobsAbout: appleJobsAbout,
      minimumQualificationsGoogle: minimumQualificationsApple,
      responsibilitiesGoogle: responsibilitiesApple),
  CompanyModels(
      img: 'assets/microsoft.png',
      name: 'Microsoft',
      locations: 'california',
      jobs: 'Ai researcher',
      pays: '\$100k \$110k /year',
      jobType: 'full time',
      jobsAbout: microsoftJobsAbout,
      minimumQualificationsGoogle: minimumQualificationsMicrosoft,
      responsibilitiesGoogle: responsibilitiesMicrosoft),
  CompanyModels(
      img: 'assets/adidas.png',
      name: 'Adidas',
      locations: 'san francisco',
      jobs: 'Digital Marketing',
      pays: '\$90k \$110k /year',
      jobType: 'full time',
      jobsAbout: adidasJobsAbout,
      minimumQualificationsGoogle: minimumQualificationsAdidas,
      responsibilitiesGoogle: responsibilitiesAdidas),
];
