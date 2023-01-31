import 'package:details/schema/item.dart';

import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

String name = employeeDetail.fullName;
int phno = employeeDetail.phoneNumber;
String mail = employeeDetail.email;
String address = employeeDetail.address;
String name1 = employeeDetail1.fullName;
int phno1 = employeeDetail1.phoneNumber;
String mail1 = employeeDetail1.email;
String address1 = employeeDetail1.address;
String name2 = employeeDetail2.fullName;
int phno2 = employeeDetail2.phoneNumber;
String mail2 = employeeDetail2.email;
String address2 = employeeDetail2.address;
String name4 = employeeDetail4.fullName;
int phno4 = employeeDetail4.phoneNumber;
String mail4 = employeeDetail4.email;
String address4 = employeeDetail4.address;
String name5 = employeeDetail5.fullName;
int phno5 = employeeDetail5.phoneNumber;
String mail5 = employeeDetail5.email;
String address5 = employeeDetail5.address;
String name7 = employeeDetail7.fullName;
int phno7 = employeeDetail7.phoneNumber;
String mail7 = employeeDetail7.email;
String address7 = employeeDetail7.address;
String name8 = employeeDetail8.fullName;
int phno8 = employeeDetail8.phoneNumber;
String mail8 = employeeDetail8.email;
String address8 = employeeDetail8.address;
String name9 = employeeDetail9.fullName;
int phno9 = employeeDetail9.phoneNumber;
String mail9 = employeeDetail9.email;
String address9 = employeeDetail9.address;
String name10 = employeeDetail10.fullName;
int phno10 = employeeDetail10.phoneNumber;
String mail10 = employeeDetail10.email;
String address10 = employeeDetail10.address;
String name11 = employeeDetail11.fullName;
int phno11 = employeeDetail11.phoneNumber;
String mail11 = employeeDetail11.email;
String address11 = employeeDetail11.address;
String name12 = employeeDetail12.fullName;
int phno12 = employeeDetail12.phoneNumber;
String mail12 = employeeDetail12.email;
String address12 = employeeDetail12.address;
String name3 = employeeDetail3.fullName;
int phno3 = employeeDetail3.phoneNumber;
String mail3 = employeeDetail3.email;
String address3 = employeeDetail3.address;
String name6 = employeeDetail6.fullName;
int phno6 = employeeDetail6.phoneNumber;
String mail6 = employeeDetail6.email;
String address6 = employeeDetail6.address;

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
  EmployeeDetails myEmployee = employees[0];
  //  EmployeeDetails myEmployee1 = employees[1];
  //   EmployeeDetails myEmployee2 = employees[2];

  debugPrint("My employee $name}");
  // debugPrint("My employee ${myEmployee1.fullName}");
  // debugPrint("My employee ${myEmployee2.fullName}");
}
