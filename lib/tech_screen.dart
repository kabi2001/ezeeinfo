import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:details/datas_of_employee';

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
    _employees = getEmployeeData();
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
        body: Column(
          children: [
            SizedBox(
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
                      columnWidthMode: ColumnWidthMode.fill,
                      selectionMode: SelectionMode.multiple,
                      source: _employeeDataSource,
                      allowSorting: true,
                      columns: [
                        GridColumn(
                            allowEditing: true,
                            columnName: 'id',
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'ID',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        GridColumn(
                            columnName: 'name',
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'NAME',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        GridColumn(
                            columnName: 'salary',
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'PHONENUMBER',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        GridColumn(
                            columnName: 'designation',
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'DESIGNATION',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        GridColumn(
                            columnName: 'location',
                            label: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              alignment: Alignment.centerLeft,
                              child: Text(
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
                  columnName: 'phonenumber', value: dataGridRow.salary),
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
