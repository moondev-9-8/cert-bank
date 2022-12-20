// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  State<Bills> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Bills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text("الفواتير")),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            //1
            UserAccountsDrawerHeader(
                accountName: Text("mona"), accountEmail: Text("1234-2345-987")),
            //2
            ListTile(
              title: Text("home"),
              leading: Icon(
                Icons.home,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("home");
              },
            ),
            ListTile(
              title: Text("كشف حساب"),
              leading: Icon(
                Icons.account_balance,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("كشف حساب");
              },
            ),
            ListTile(
              title: Text("الفواتير"),
              leading: Icon(
                Icons.list_alt_rounded,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text("المعاملات"),
              leading: Icon(
                Icons.payments_rounded,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {},
            ),

            ListTile(
              title: Text("الضبط"),
              leading: Icon(
                Icons.settings,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("COMING SOON!"),
      ),
    );
  }
}
