import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:flutter/material.dart';

class Employee {
  Employee(
      this.id, this.name, this.phoneNumber, this.designation, this.location);

  final int? id;
  final String? name;
  final int? phoneNumber;
  final String? designation;
  final String? location;
}

List<Employee> getEmployeeData(
  String? name,
  int? phno,
  String? mail,
  String? address,
  String? name1,
  int? phno1,
  String? mail1,
  String? address1,
  String? name2,
  int? phno2,
  String? mail2,
  String? address2,
  String? name3,
  int? phno3,
  String? mail3,
  String? address3,
  String? name4,
  int? phno4,
  String? mail4,
  String? address4,
  String? name5,
  int? phno5,
  String? mail5,
  String? address5,
  String? name6,
  int? phno6,
  String? mail6,
  String? address6,
  String? name7,
  int? phno7,
  String? mail7,
  String? address7,
  String? name8,
  int? phno8,
  String? mail8,
  String? address8,
  String? name9,
  int? phno9,
  String? mail9,
  String? address9,
  String? name10,
  int? phno10,
  String? mail10,
  String? address10,
  String? name11,
  int? phno11,
  String? mail11,
  String? address11,
  String? name12,
  int? phno12,
  String? mail12,
  String? address12,
) {
  return [
    Employee(1, name, phno, mail, address),
    Employee(2, name1, phno1, mail1, address1),
    Employee(3, name2, phno2, mail2, address2),
    Employee(4, name3, phno3, mail3, address3),
    Employee(5, name4, phno4, mail4, address4),
    Employee(6, name5, phno5, mail5, address5),
    Employee(7, name6, phno6, mail6, address6),
    Employee(8, name7, phno7, mail7, address7),
    Employee(9, name8, phno8, mail8, address8),
    Employee(10, name9, phno9, mail9, address9),
    Employee(11, name10, phno10, mail10, address10),
    Employee(12, name11, phno11, mail11, address11),
    Employee(13, name12, phno12, mail12, address12),
  ];
}
