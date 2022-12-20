// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Transfer> {
  String _userName = "";
  String _userNo = "";
  String _Amount = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text("تحويل رصيد")),
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
      //////////////////////////////////
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Form(
            child: Column(
          children: [
            /////////رقم الحساب"
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.all(10), child: Text("رقم الحساب")),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) {
                      newValue = _userNo;
                    },
                    decoration: const InputDecoration(
                      labelText: "User ID",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            //////////////اسم صاحب الحساب
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Text("اسم صاحب الحساب")),
                  TextFormField(
                    onSaved: (newValue) {
                      newValue = _userName;
                    },
                    decoration: const InputDecoration(
                      labelText: "User name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            ////////////المبلغ المراد تحويله"
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 90, top: 10),
                      child: Text("المبلغ المراد تحويله")),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) {
                      newValue = _Amount;
                    },
                    decoration: const InputDecoration(
                      labelText: "Amount",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            ////////////////
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 90, top: 10),
                      child: Text("تعليق")),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      labelText: "Comment",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ///////////////button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                child: Text(
                  "تحويل",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                    primary: Color.fromARGB(255, 9, 53, 89),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  // if success
                  // ignore: avoid_single_cascade_in_expression_statements
                  AwesomeDialog(
                    context: context,
                    dialogBackgroundColor: Color.fromARGB(255, 233, 242, 241),
                    // width: 1000,
                    dialogType: DialogType.success,
                    animType: AnimType.bottomSlide,
                    title: " تم التحويل ",
                    desc: '  ..تم تحويل $_Amount   .. الى حساب $_userName',
                    //btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
