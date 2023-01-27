import 'package:flutter/material.dart';

class UpdateDetails extends StatefulWidget {
  const UpdateDetails({super.key});
  static String id = 'UpdateDetails';

  @override
  State<UpdateDetails> createState() => _UpdateDetailsState();
}

class _UpdateDetailsState extends State<UpdateDetails> {
  String selectedRole = 'Tech';

  List<DropdownMenuItem<String>>? getDropdownItem() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (int i = 0; i < SelectedRole.length; i++) {
      String number = SelectedRole[i];
      var newItem = DropdownMenuItem(
        value: number,
        child: Text(
          number,
          style: const TextStyle(fontSize: 20.0, color: Colors.black),
        ),
      );
      dropDownItems.add(newItem);
    }
    return dropDownItems;
  }

  // ignore: non_constant_identifier_names
  late String Name;
  late String phone;
  late String email;
  late String address;

  // ignore: non_constant_identifier_names
  final TextEditingController _Name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();
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
          title: const Text(
            'Update Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextfield(
                text: 'Full Name',
                hinttext: 'Enter Your Name',
                onchanged: (value) {
                  Name = value;
                },
                controller: _Name,
              ),
              CustomTextfield(
                text: 'Mobile Number',
                onchanged: (value) {
                  phone = value;
                },
                controller: _phone,
                hinttext: 'Enter your Mobile Number',
              ),
              CustomTextfield(
                text: 'E-mail',
                onchanged: (value) {
                  email = value;
                },
                controller: _email,
                hinttext: 'Enter Your Email',
              ),
              CustomTextfield(
                text: 'Address',
                onchanged: (value) {
                  address = value;
                },
                controller: _address,
                hinttext: 'Enter Your Address',
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 13, bottom: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Team'),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 600,
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          value: selectedRole,
                          items: getDropdownItem(),
                          onChanged: (value) {
                            setState(() {
                              selectedRole = value!;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    )),
              )
            ]),
      ),
    );
  }
}

class CustomTextfield extends StatelessWidget {
  CustomTextfield(
      {required this.text,
      required this.onchanged,
      required this.controller,
      required this.hinttext});
  String text;
  String hinttext;

  Function(String) onchanged;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 13, bottom: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$text'),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 600,
            child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  hintText: hinttext,
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: onchanged),
          ),
        ],
      ),
    );
  }
}

const List<String> SelectedRole = ['Tech', 'GPS ', 'Support'];
