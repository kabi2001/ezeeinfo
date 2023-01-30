import 'package:details/update_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
//import 'package:details/datas_of_employee';
//import 'package:details/datas_of_employee';
import 'package:collection/collection.dart';

//import 'package:datagrid_editing/model/employee.dart';

class TechScreen extends StatefulWidget {
  const TechScreen({super.key});
  static String id = 'TechScreen';

  @override
  State<TechScreen> createState() => _TechScreenState();
}

class _TechScreenState extends State<TechScreen> {
  late EmployeeDataSource _employeeDataSource;
  List<Employee> _employees = <Employee>[];
  late DataGridController _dataGridController;

  @override
  void initState() {
    _employees = getEmployeeData().cast<Employee>();
    _employeeDataSource = EmployeeDataSource(_employees);
    _dataGridController = DataGridController();
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
                      source: _employeeDataSource,
                      allowEditing: true,
                      selectionMode: SelectionMode.single,
                      navigationMode: GridNavigationMode.cell,
                      columnWidthMode: ColumnWidthMode.fill,
                      controller: _dataGridController,
                      columns: [
                        GridColumn(
                          columnName: 'id',
                          label: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerRight,
                            child: Text(
                              'ID',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        GridColumn(
                          columnName: 'name',
                          label: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Name',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        GridColumn(
                          columnName: 'designation',
                          label: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Designation',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        GridColumn(
                          columnName: 'salary',
                          label: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Salary',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
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

  List<Employee> getEmployeeData() {
    return [
      Employee(10001, 'James', 1000, ' LeProjectad'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
      Employee(10002, 'Kathryn', 2000, 'Manager'),
    ];
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource(this._employees) {
    dataGridRows = _employees
        .map<DataGridRow>((dataGridRow) => dataGridRow.getDataGridRow())
        .toList();
  }

  List<Employee> _employees = [];

  List<DataGridRow> dataGridRows = [];
  dynamic newCellValue;

  TextEditingController editingController = TextEditingController();

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
          alignment: (dataGridCell.columnName == 'id' ||
                  dataGridCell.columnName == 'salary')
              ? Alignment.centerRight
              : Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ));
    }).toList());
  }

  @override
  void onCellSubmit(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) {
    final dynamic oldValue = dataGridRow.getCells().firstOrNull!.value ?? '';

    final int dataRowIndex = dataGridRows.indexOf(dataGridRow);

    if (newCellValue == null || oldValue == newCellValue) {
      return;
    }

    if (column.columnName == 'id') {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<int>(columnName: 'id', value: newCellValue);
      _employees[dataRowIndex].id = newCellValue as int;
    } else if (column.columnName == 'name') {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<String>(columnName: 'name', value: newCellValue);
      _employees[dataRowIndex].name = newCellValue.toString();
    } else if (column.columnName == 'designation') {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<String>(columnName: 'designation', value: newCellValue);
      _employees[dataRowIndex].designation = newCellValue.toint();
    } else {
      dataGridRows[dataRowIndex].getCells()[rowColumnIndex.columnIndex] =
          DataGridCell<int>(columnName: 'salary', value: newCellValue);
      _employees[dataRowIndex].salary = newCellValue as int;
    }
  }

  @override
  bool canSubmitCell(DataGridRow dataGridRow, RowColumnIndex rowColumnIndex,
      GridColumn column) {
    return true;
  }

  @override
  Widget? buildEditWidget(DataGridRow dataGridRow,
      RowColumnIndex rowColumnIndex, GridColumn column, CellSubmit submitCell) {
    final String displayText = dataGridRow
            .getCells()
            .firstWhereOrNull((DataGridCell dataGridCell) =>
                dataGridCell.columnName == column.columnName)
            ?.value
            ?.toString() ??
        '';

    newCellValue = null;

    final bool isNumericType =
        column.columnName == 'id' || column.columnName == 'salary';
    final RegExp regExp = _getRegExp(isNumericType, column.columnName);

    return Container(
      padding: const EdgeInsets.all(8.0),
      alignment: isNumericType ? Alignment.centerRight : Alignment.centerLeft,
      child: TextField(
        autofocus: true,
        controller: editingController..text = displayText,
        textAlign: isNumericType ? TextAlign.right : TextAlign.left,
        autocorrect: false,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
        ),
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(regExp)
        ],
        keyboardType: isNumericType ? TextInputType.number : TextInputType.text,
        onChanged: (String value) {
          if (value.isNotEmpty) {
            if (isNumericType) {
              newCellValue = int.parse(value);
            } else {
              newCellValue = value;
            }
          } else {
            newCellValue = null;
          }
        },
        onSubmitted: (String value) {
          submitCell();
        },
      ),
    );
  }

  RegExp _getRegExp(bool isNumericKeyBoard, String columnName) {
    return isNumericKeyBoard ? RegExp('[0-9]') : RegExp('[a-zA-Z ]');
  }
}

class Employee {
  Employee(this.id, this.name, this.salary, this.designation);

  late final int id;
  late final String name;
  late final String designation;
  late final int salary;

  DataGridRow getDataGridRow() {
    return DataGridRow(cells: <DataGridCell>[
      DataGridCell<int>(columnName: 'id', value: id),
      DataGridCell<String>(columnName: 'name', value: name),
      DataGridCell<String>(columnName: 'salary', value: designation),
      DataGridCell<int>(columnName: 'designation', value: salary),
      //  DataGridCell<int>(columnName: 'location', value: location),
    ]);
  }
}
