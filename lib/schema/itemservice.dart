import 'package:details/schema/item.dart';

import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

String? name;
int? phno;
String? mail;
String? address;
String? name1;
int? phno1;
String? mail1;
String? address1;
String? name2;
int? phno2;
String? mail2;
String? address2;
String? name4;
int? phno4;
String? mail4;
String? address4;
String? name5;
int? phno5;
String? mail5;
String? address5;
String? name7;
int? phno7;
String? mail7;
String? address7;
String? name8;
int? phno8;
String? mail8;
String? address8;
String? name9;
int? phno9;
String? mail9;
String? address9;
String? name10;
int? phno10;
String? mail10;
String? address10;
String? name11;
int? phno11;
String? mail11;
String? address11;
String? name12;
int? phno12;
String? mail12;
String? address12;
String? name3;
int? phno3;
String? mail3;
String? address3;
String? name6;
int? phno6;
String? mail6;
String? address6;

//mployeeDetails? employeeDetails;
var config = Configuration.local([EmployeeDetails.schema]);
var realm = Realm(config);

var employeeDetail = EmployeeDetails(
    'Bharath', 7010201336, 'bharath.ezee@gmail.com', 'Tiruvallur');
var employeeDetail1 = EmployeeDetails(
    'AswinKumar', 8526532638, 'aswinkumar.ezee@gmail.com', 'NamaKkal');
var employeeDetail2 =
    EmployeeDetails('Ram', 8508157068, 'ramkumar.ezee@gmail.com', 'vilupuram');
var employeeDetail3 = EmployeeDetails(
    'Rajesh', 8760441401, 'rajesh.ezee@gmail.com', 'Tirunelveli');
var employeeDetail4 = EmployeeDetails(
    'Abdullah', 8072964047, 'abdhulla.ezee@gmail.com', 'Thanjavur');
var employeeDetail5 = EmployeeDetails(
    'Kartheesh', 9344519769, 'kartheesh.ezee@gmail.com', 'Tirunelveli');
var employeeDetail6 = EmployeeDetails(
    'Ismail', 8675831976, 'ismail.ezee@gmail.com', 'Nagapattinam');
var employeeDetail7 = EmployeeDetails(
    'Selvan', 9500004947, 'selvan.ezee@gmail.com', 'Kumbakonam');
var employeeDetail8 = EmployeeDetails(
    'Thiyagu', 9500002891, 'thiyagu.ezee@gmail.com', 'Kanjipuram');
var employeeDetail9 = EmployeeDetails(
    'Bavithra', 8760556135, 'bavithra.ezee@gmail.com', 'Trichy');
var employeeDetail10 = EmployeeDetails(
    'SriDharan', 9597292187, 'sridharan.ezee@gmail.com', 'Namakkal');
var employeeDetail11 = EmployeeDetails('Kabileshwaran', 6379554729,
    'kabileshwaran.ezee@gmail.com', 'thiruvannamalai');
var employeeDetail12 = EmployeeDetails(
    'Santhosh', 9751241372, 'sandhosh.ezee@gmail.com', 'pondichery');

void method() async {
  realm.write(() {
    realm.add(employeeDetail);
    realm.add(employeeDetail1);
    realm.add(employeeDetail2);
    realm.add(employeeDetail3);
    realm.add(employeeDetail4);
    realm.add(employeeDetail5);
    realm.add(employeeDetail6);
    realm.add(employeeDetail7);
    realm.add(employeeDetail8);
    realm.add(employeeDetail9);
    realm.add(employeeDetail10);
    realm.add(employeeDetail11);
    realm.add(employeeDetail12);
    for (int i = 0; i <= 12; i++) {
      realm.add(employeeDetail);
    }
  });
}

void realmMethod() async {
  var employees = realm.all<EmployeeDetails>();
  for (int i = 0; i <= 12; i++) {
// EmployeeDetails myEmployee = employees[i];
    debugPrint('${employees[i].fullName} is from ${employees[i].address}');
    name = employees[0].fullName;
    phno = employees[0].phoneNumber;
    mail = employees[0].email;
    address = employees[0].address;
    name1 = employees[1].fullName;
    phno1 = employees[1].phoneNumber;
    mail1 = employees[1].email;
    address1 = employees[1].address;
    name2 = employees[2].fullName;
    phno2 = employees[2].phoneNumber;
    mail2 = employees[2].email;
    address2 = employees[2].address;
    name3 = employees[3].fullName;
    phno3 = employees[3].phoneNumber;
    mail3 = employees[3].email;
    address3 = employees[3].address;
    name4 = employees[4].fullName;
    phno4 = employees[4].phoneNumber;
    mail4 = employees[4].email;
    address4 = employees[4].address;
    name5 = employees[5].fullName;
    phno5 = employees[5].phoneNumber;
    mail5 = employees[5].email;
    address5 = employees[5].address;
    name6 = employees[6].fullName;
    phno6 = employees[6].phoneNumber;
    mail6 = employees[6].email;
    address6 = employees[6].address;
    name7 = employees[7].fullName;
    phno7 = employees[7].phoneNumber;
    mail7 = employees[7].email;
    address7 = employees[7].address;
    name8 = employees[8].fullName;
    phno8 = employees[8].phoneNumber;
    mail8 = employees[8].email;
    address8 = employees[8].address;
    name9 = employees[9].fullName;
    phno9 = employees[9].phoneNumber;
    mail9 = employees[9].email;
    address9 = employees[9].address;
    name10 = employees[10].fullName;
    phno10 = employees[10].phoneNumber;
    mail10 = employees[10].email;
    address10 = employees[10].address;
    name11 = employees[11].fullName;
    phno11 = employees[11].phoneNumber;
    mail11 = employees[11].email;
    address11 = employees[11].address;
    name12 = employees[12].fullName;
    phno12 = employees[12].phoneNumber;
    mail12 = employees[12].email;
    address12 = employees[12].address;
  }
}
