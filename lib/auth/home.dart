// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("WELCOME")),
          toolbarHeight: 95,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              //1
              UserAccountsDrawerHeader(
                  accountName: Text(
                    "Mona",
                    style: TextStyle(fontSize: 35),
                  ),
                  accountEmail: Text("1234-2345-987")),
              //2
              ListTile(
                title: Text("Profile"),
                leading: Icon(
                  Icons.account_circle,
                  size: 30,
                  color: IconTheme.of(context).color,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("profile");
                },
              ),

              ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.info,
                  size: 30,
                  color: IconTheme.of(context).color,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("about");
                },
              ),

              ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: IconTheme.of(context).color,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("settings");
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(17),
                  height: 120,
                  width: 160,
                  child: FloatingActionButton.extended(
                    heroTag: "butn 1",
                    elevation: 0.9,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("كشف حساب");
                    },
                    icon: Icon(
                      Icons.account_balance,
                    ),
                    label: Text("كشف حساب"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(17),
                  height: 120,
                  width: 160,
                  child: FloatingActionButton.extended(
                    heroTag: "butn 2",
                    elevation: 0.9,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pushNamed("تحويل رصيد");
                    },
                    icon: Icon(
                      Icons.money,
                    ),
                    label: Text("تحويل رصيد "),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(17),
                  height: 120,
                  width: 160,
                  child: FloatingActionButton.extended(
                    heroTag: "butn 3",
                    elevation: 0.9,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("الفواتير");
                    },
                    icon: Icon(
                      Icons.list_alt_rounded,
                    ),
                    label: Text("الفواتير"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(17),
                  height: 120,
                  width: 160,
                  child: FloatingActionButton.extended(
                    heroTag: "butn 4",
                    elevation: 0.5,
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.of(context).pushNamed("المعاملات");
                    },
                    icon: Icon(
                      Icons.payments_rounded,
                    ),
                    label: Text("المعاملات"),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
