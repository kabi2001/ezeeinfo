import 'package:details/schema/itemservice.dart';

import 'update_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
//import 'datas_of_employee';
import 'package:details/datas_of_employee.dart';

class TechScreen extends StatefulWidget {
  const TechScreen({super.key});
  static String id = 'TechScreen';

  @override
  State<TechScreen> createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  late List<Employee> _employees;
  late EmployeeDataSource _employeeDataSource;

  @override
  void initState() {
    _employees = getEmployeeData(
      name,
      phno,
      mail,
      address,
      name1,
      phno1,
      mail1,
      address1,
      name2,
      phno2,
      mail2,
      address2,
      name3,
      phno3,
      mail3,
      address3,
      name4,
      phno4,
      mail4,
      address4,
      name5,
      phno5,
      mail5,
      address5,
      name6,
      phno6,
      mail6,
      address6,
      name7,
      phno7,
      mail7,
      address7,
      name8,
      phno8,
      mail8,
      address8,
      name9,
      phno9,
      mail9,
      address9,
      name10,
      phno10,
      mail10,
      address10,
      name11,
      phno11,
      mail11,
      address11,
      name12,
      phno12,
      mail12,
      address12,
    );
    _employeeDataSource = EmployeeDataSource(_employees);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text('Technical Team'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, UpdateDetails.id);
                    },
                    child: const Text(
                      'Add Employees',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    InkWell(
                      splashColor: Colors.blue.withOpacity(0.8),
                      onTap: () {
                        setState(() {});
                      },
                      child: SfDataGrid(
                        shrinkWrapRows: true,
                        columnWidthMode: ColumnWidthMode.fill,
                        selectionMode: SelectionMode.multiple,
                        source: _employeeDataSource,
                        allowSorting: true,
                        columns: [
                          GridColumn(
                              allowEditing: true,
                              columnName: 'id',
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'ID',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          GridColumn(
                              columnName: 'name',
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'NAME',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          GridColumn(
                              columnName: 'salary',
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'PHONENUMBER',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          GridColumn(
                              columnName: 'designation',
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'DESIGNATION',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          GridColumn(
                              columnName: 'location',
                              label: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'LOCATION',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(List<Employee> employees) {
    dataGridRows = employees
        .map<DataGridRow>((dataGridRow) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'id', value: dataGridRow.id),
              DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
              DataGridCell<int>(
                  columnName: 'phonenumber', value: dataGridRow.phoneNumber),
              DataGridCell<String>(
                  columnName: 'designation', value: dataGridRow.designation),
              DataGridCell<String>(
                  columnName: 'location', value: dataGridRow.location),
            ]))
        .toList();
  }
  late List<DataGridRow> dataGridRows;

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        //color: Color.fromARGB(255, 55, 41, 249),
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        // alignment: (dataGridCell.columnName == 'id' ||
        //         dataGridCell.columnName == 'phonenumber')
        //    ? Alignment.centerRight
        //     : Alignment.centerLeft,
        child: Text(
          dataGridCell.value.toString(),
          overflow: TextOverflow.ellipsis,
        ),
      );
    }).toList());
  }
}
