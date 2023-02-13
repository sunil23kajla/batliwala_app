// ignore_for_file: sort_child_properties_last, unnecessary_new

import 'dart:ui';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class ProfileScreeen extends StatefulWidget {
  const ProfileScreeen({Key? key}) : super(key: key);

  @override
  State<ProfileScreeen> createState() => _ProfileScreeenState();
}

class _ProfileScreeenState extends State<ProfileScreeen> {
  TextEditingController fullName = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController pincode = TextEditingController();
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: const Text(
                'My Profile',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            profiles("Name", fullName, "Enter your Full Name", Icons.person,
                TextInputType.text),
            //  profiles("DOB",dob,"DOB" ,Icons.calendar_today,TextInputType.text),
            Padding(
                padding:
                    const EdgeInsets.only(left: 2.0, right: 25.0, top: 25.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        Text(
                          'DOB',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 1.0, right: 1.0, top: 1.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Flexible(
                      child: DateTimeField(
                        controller: dob,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today),
                          hintText: "Enter your Dob",
                        ),
                        format: format,
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100));
                        },
                      ),
                    ),
                  ],
                )),
            profiles("Gender", gender, "Enter your Gender", Icons.man_outlined,
                TextInputType.text),
            profiles("Email", email, "Enter your Email", Icons.email,
                TextInputType.text),
            profiles(
              "Mobile No.",
              mobileno,
              "Enter your Mobile No.",
              Icons.phone,
              TextInputType.number,
              limit: 10,
            ),
            profiles("State", state, "Enter your State", Icons.home,
                TextInputType.text),
            profiles("City", city, "Enter your City", Icons.home,
                TextInputType.text),
            profiles("District", district, "Enter your District", Icons.home,
                TextInputType.text),
            profiles("Pincode", pincode, "Enter your Pincode",
                Icons.person_pin_circle_rounded, TextInputType.number,
                limit: 6),

            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
              // ignore: unnecessary_new
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                          // ignore: unnecessary_new
                          child: new RaisedButton(
                        child: const Text("cancel"),
                        textColor: Colors.white,
                        color: Colors.red,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        // ignore: unnecessary_new
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      )),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                          child: new RaisedButton(
                        child: const Text("save"),
                        textColor: Colors.white,
                        color: const Color(0xFF19344f),
                        onPressed: () async {
                          bool emailValid = RegExp(
                                  r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                              .hasMatch(email.text);

                          if (fullName.text.isEmpty ||
                              dob.text.isEmpty ||
                              gender.text.isEmpty ||
                              email.text.isEmpty ||
                              mobileno.text.isEmpty ||
                              state.text.isEmpty ||
                              city.text.isEmpty ||
                              district.text.isEmpty ||
                              pincode.text.isEmpty) {
                            Fluttertoast.showToast(
                              msg: " All field are required",
                              gravity: ToastGravity.CENTER,
                            );
                          } else if (!emailValid) {
                            Fluttertoast.showToast(
                              msg: "Email is not valid",
                              gravity: ToastGravity.CENTER,
                            );
                          } else if (validateMobile(mobileno.text.trim())) {
                            Fluttertoast.showToast(
                                msg: "please enter valid number");
                          } else {
                            Fluttertoast.showToast(msg: "validation complete");
                            // print("validation complete");
                          }
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                      )),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  bool validateMobile(String value) {
    print("validateMobile called");
    if (value.length != 10) {
      return true;
    }
    {
      // return null;
      return true;
    }
  }

  Widget profiles(title, value, hintname, icons, board, {limit = 70}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 1),
          child: Container(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              title,
              style: const TextStyle(color: Color(0xFF000000), fontSize: 20),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        new Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // ignore: unnecessary_new
            new Flexible(
              child: new TextField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(limit),
                ],
                keyboardType: board,
                controller: value,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(icons),
                  ),
                  hintText: "$hintname",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
