// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:details/schema/employee_details.dart';
import 'package:realm/realm.dart';

//mployeeDetails? employeeDetails;
var config = Configuration.local([EmployeeDetails.schema]);
var realm = Realm(config);

//var employeeDetail = EmployeeDetails(
//  "nithyasasndhosh", 9751241372, "nithyasandhosh", "pondycherry");

void method() async {
  realm.write(() {
    //realm.add(employeeDetail);
    // realm.add(EmployeeDetails(
    //     "sridharan", 9751241372, "sridharan@gmail.com", "namakal"));
    realm.add(EmployeeDetails(
        "kabilesh", 9751241372, "kabilesh@gmail.com", "namakal"));
  });
}

void realmMethod() async {
  var employees = realm.all<EmployeeDetails>();
  EmployeeDetails myEmployee = employees[0];
  print("My employee ${myEmployee.fullName} my email ${myEmployee.email}");
}
