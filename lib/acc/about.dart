// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(child: Text("About")),
      ),
      body: Center(
        child: Text("COMING SOON!"),
      ),
    );
  }
}
