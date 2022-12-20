// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text("كشف الحساب")),
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
              title: Text("تحويل رصيد "),
              leading: Icon(
                Icons.money,
                size: 33,
                color: IconTheme.of(context).color,
              ),
              onTap: () {
                Navigator.of(context).pushNamed("تحويل رصيد");
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
      body: Container(
        height: 150,
        margin: EdgeInsets.all(10),
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Row(
              children: [
                //1
                Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.account_balance_wallet_rounded,
                      size: 45, color: Colors.white),
                ),
                //2

                Text(
                  "حساب توفير |",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                //3
                Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Text(
                    "100,000",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                //4
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "SDG",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "الحساب- 1234-2345-987",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
