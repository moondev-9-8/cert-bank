import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _nameState();
}

class _nameState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color.fromARGB(255, 95, 127, 190),
                      Color.fromARGB(255, 57, 89, 144),
                      Color.fromARGB(255, 25, 68, 120),
                      Color.fromARGB(255, 12, 44, 96)
                    ],
                        stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9,
                    ])),
                child: Container(
                    margin: EdgeInsets.only(top: 60, left: 160),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, top: 40),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("home");
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 140, top: 110),
                child: CircleAvatar(
                  //  backgroundImage: AssetImage("images/contactIcon.PNG"),
                  radius: 60,
                ),
              ),
            ],
          ),

          //

          //
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 0, top: 20),
                child: Text(
                  "Mona Tharwat",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, bottom: 10),
                child: Text(
                  "mona@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ), //1
          Container(
            margin: EdgeInsets.all(15),
            width: 370,
            height: 270,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(13), bottom: Radius.circular(10)),
                border: Border.all(color: Colors.grey, width: 0.5),
                // color: Colors.grey[200],
                shape: BoxShape.rectangle),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(direction: Axis.horizontal, children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "First Name ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 210),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Mona",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Last Name ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 190),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Tharwat",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Email ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 160),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "mona@gmail.com",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "User ID",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 190),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "123456789",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Phone number",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 130),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "+249 92000010",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Account type",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 130),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Saving Account",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Address",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(width: 150),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Khartoum, Sudan",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("profile_setup");
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 165, vertical: 15),
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text(
                "Edit",
                style: TextStyle(fontSize: 17),
              )),
        ],
      ),
    ));
  }
}
