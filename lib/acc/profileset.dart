// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileSet extends StatefulWidget {
  const ProfileSet({Key? key}) : super(key: key);

  @override
  State<ProfileSet> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<ProfileSet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text("Profile Setup")),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                height: 250,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 90,
                      child: Container(
                        padding: EdgeInsets.all(45),
                        // child: Image(
                        //   image: AssetImage("images/person.png"),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60, top: 150),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        // backgroundImage: AssetImage("images/cam.png",),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey[600],
                          size: 25,
                        ),
                        radius: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                child: Form(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 140,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text("First Name"),
                                border: UnderlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 180,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text("Last Name"),
                                border: UnderlineInputBorder()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Email"),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("User ID"),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text("+249"),
                                border: UnderlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: 260,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: Text("Phone Number"),
                                border: UnderlineInputBorder()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: MyStatefulWidget(),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Address",
                            border: UnderlineInputBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 160, vertical: 15),
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("profile");
                      },
                    ),
                  ],
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Saving';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 30,
      elevation: 10,
      style: TextStyle(color: Colors.grey[700]),
      underline: Container(
        height: .7,
        color: Colors.grey[600],
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Saving', 'Deposit']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 0),
                  child: Text("Account Type")),
              SizedBox(
                width: 165,
              ),
              Container(padding: EdgeInsets.all(10), child: Text(value)),
            ],
          ),
        );
      }).toList(),
    );
  }
}
