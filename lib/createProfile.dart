import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:team_project/message.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late String _name, _phone;
  String _state = "employed";
  String emp = "employed";
  String unemp = "unemployed";

  String dropdownvalue = 'Erbil';
  var items = [
    'Erbil',
    'Slemani',
    'Duhok',
    'Halabja',
  ];
  String dropdownvalue2 = 'Flutter';
  var items2 = [
    'Flutter',
    'Java',
    'Python',
    'React',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name", style: TextStyle(fontSize: 24)),
              Container(
                color: Colors.grey[300],
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              Text("Phone", style: TextStyle(fontSize: 24)),
              Container(
                color: Colors.grey[300],
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      _phone = value;
                    });
                  },
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(height: 20),
              Text("City", style: TextStyle(fontSize: 24)),
              Container(
                color: Colors.grey[300],
                width: double.infinity,
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Text("Job Category", style: TextStyle(fontSize: 24)),
              Container(
                color: Colors.grey[300],
                width: double.infinity,
                child: DropdownButton(
                  // Initial Value
                  value: dropdownvalue2,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items2.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue2 = newValue!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('EMPLOYED'),
                leading: Radio(
                  value: emp,
                  groupValue: _state,
                  onChanged: (value) {
                    setState(() {
                      _state = value.toString();
                      print(_state);
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('UNEMPLOYED'),
                leading: Radio(
                  value: unemp,
                  groupValue: _state,
                  onChanged: (value) {
                    setState(() {
                      _state = value.toString();
                      print(_state);
                    });
                  },
                ),
              ),
              Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      FirebaseFirestore.instance.collection("profile").add({
                        'name': _name,
                        'phone': _phone,
                        'city': dropdownvalue,
                        'job': dropdownvalue2,
                        'state': _state
                      }).then((value) => Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return Message();
                          })));
                    },
                    child: Text("CREATE PROFILE"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
