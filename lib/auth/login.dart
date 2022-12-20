// ignore_for_file: prefer_const_constructors, avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';
import 'package:untitled4/auth/home.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  get _password => "1234";
  var pass; //pass intered by user
  bool _obscureText = true;
  var counter = 0; //wrong pass
  var _userID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            ///////
            // Image(image: AssetImage("images/download.png")),
            //1 page header "login"
            Container(
                padding: const EdgeInsets.only(left: 20, top: 150),
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 300,
                child: Column(
                  children: const [
                    Text(
                      "WELCOME TO CERT BANK",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                )),
            SizedBox(height: 0),
            ///////
            Container(
                padding: const EdgeInsets.only(left: 20, top: 275),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold))),

            //2 form feilds
            Container(
              padding: const EdgeInsets.only(
                  top: 350, left: 10, bottom: 10, right: 10),
              child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: Column(children: [
                    //email
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (text) {
                        if (text!.length < 8) {
                          return "ID cannot be less than 8 digits";
                        }
// if (text!.length > 10) {
// return "ID cannot exceed 10 digits";
// }
                        return null;
                      },
                      onChanged: (newValue) {
                        setState(() {
                          _userID = newValue;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: "User ID",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ///////

                    ///////
                    const SizedBox(
                      height: 30,
                    ),
                    //passس
                    TextFormField(
                      //keyboardType: TextInputType.number,
                      obscureText: _obscureText,
                      onChanged: (newValue) {
                        pass = newValue;
                      },
                      decoration: InputDecoration(
                        label: Text("Password"),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(_obscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //3 login botton
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15),
                            primary: Color.fromARGB(255, 9, 53, 89),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        onPressed: () {
                          setState(() {
                            ///////check pass
                            print(pass);
                            pass == _password && _userID == "88888888"
                                ? Navigator.of(context)
                                    .pushReplacementNamed("home")
                                : counter++;
                            print(counter);

                            if (counter == 4) {
                              AwesomeDialog(
                                context: context,
                                dialogBackgroundColor: Colors.white,
                                // width: 1000,
                                dialogType: DialogType.error,
                                animType: AnimType.bottomSlide,
                                title: "Login Failed",
                                desc:
                                    'you have entered wrong Userid Or password 4 times',
                                //btnCancelOnPress: () {},
                                btnOkColor: Colors.grey[600],
                                btnOkOnPress: () {
                                  setState(() {
                                    counter = 0;
                                  });
                                },
                              )..show();
                            }
                            //////// check id
                            //   ID == _userID;
                            //   print(ID);
                            //   ID == _userID ? print(object)
                          });
                        },
                      ),
                    ),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
