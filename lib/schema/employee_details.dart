import 'package:realm/realm.dart'; // import realm package

part 'employee_details.g.dart'; // declare a part file.

@RealmModel()
class _EmployeeDetails {
  @PrimaryKey()
  late String fullName;
  late int phoneNumber;
  late String email;
  late String address;
}
