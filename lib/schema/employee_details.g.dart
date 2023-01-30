// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_details.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class EmployeeDetails extends _EmployeeDetails
    with RealmEntity, RealmObjectBase, RealmObject {
  EmployeeDetails(
    String fullName,
    int phoneNumber,
    String email,
    String address,
  ) {
    RealmObjectBase.set(this, 'fullName', fullName);
    RealmObjectBase.set(this, 'phoneNumber', phoneNumber);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'address', address);
  }

  EmployeeDetails._();

  @override
  String get fullName =>
      RealmObjectBase.get<String>(this, 'fullName') as String;
  @override
  set fullName(String value) => RealmObjectBase.set(this, 'fullName', value);

  @override
  int get phoneNumber => RealmObjectBase.get<int>(this, 'phoneNumber') as int;
  @override
  set phoneNumber(int value) => RealmObjectBase.set(this, 'phoneNumber', value);

  @override
  String get email => RealmObjectBase.get<String>(this, 'email') as String;
  @override
  set email(String value) => RealmObjectBase.set(this, 'email', value);

  @override
  String get address => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  Stream<RealmObjectChanges<EmployeeDetails>> get changes =>
      RealmObjectBase.getChanges<EmployeeDetails>(this);

  @override
  EmployeeDetails freeze() =>
      RealmObjectBase.freezeObject<EmployeeDetails>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(EmployeeDetails._);
    return const SchemaObject(
        ObjectType.realmObject, EmployeeDetails, 'EmployeeDetails', [
      SchemaProperty('fullName', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('phoneNumber', RealmPropertyType.int),
      SchemaProperty('email', RealmPropertyType.string),
      SchemaProperty('address', RealmPropertyType.string),
    ]);
  }
}
