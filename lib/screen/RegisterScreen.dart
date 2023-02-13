import 'dart:math';

import 'package:batliwala/api/api_base_helper.dart';
import 'package:batliwala/main.dart';
import 'package:batliwala/screen/Home_page.dart';
import 'package:batliwala/screen/Login.dart';
import 'package:batliwala/widgets/show_dilog.dart';
import 'package:flutter/material.dart';

import '../utils/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fullname = TextEditingController();
  TextEditingController phoneno = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController city = TextEditingController();
  TextEditingController pincode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/finallogo.png',
          fit: BoxFit.fill,
          height: 110,
          color: Color(0xFFf69b03),
        ),
        backgroundColor: Color(0xFF000000),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/loginbg.jpg',
                  ),
                  fit: BoxFit.fill)),
          // height: MediaQuery.of(context).size.height,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Container(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                          letterSpacing: 2),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 13),
                    child: Text(
                      'NAME',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: fullname,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'MOBILE NO.',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: phoneno,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Mobile No.',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'PASSWORD',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'EMAIL',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: email,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'CITY',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: city,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'City',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'PINCODE',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: pincode,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Pincode',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF9b9b9b,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: () async {
                      if (fullname.text.isEmpty) {
                        showToastMessage("Enter User Name");
                      } else if (phoneno.text.isEmpty) {
                        showToastMessage("Enter Mobile No");
                      } else if (password.text.isEmpty) {
                        showToastMessage("Enter Password");
                      } else if (city.text.isEmpty) {
                        showToastMessage("Enter City");
                      } else if (pincode.text.isEmpty) {
                        showToastMessage("Enter Pin Code");
                      } else {
                        showLoader(context);
                        Map<String, String> body = {
                          'name': fullname.text.toString(),
                          'phone': phoneno.text.toString(),
                          'password': password.text..toString(),
                          'email': email.text.toString(),
                          'city': city.text.toString(),
                          'pincode': pincode.text.toString(),
                        };

                        var resp = await ApiBaseHelper.registerApi(body);
                        print(resp);
                        Navigator.pop(context);
                        if (resp["status"] == true) {
                          showToastMessage(resp["result"] + "fully Login ");
                          sp!.putBool(SpUtil.IS_LOGGED_IN, true);
                          // sp!.putString(
                          //     SpUtil.USER_ID, resp["data"][0]["id"]);
                          // print(resp["data"][""][0]["id"]);
                          // print(resp["data"][0][0]["name"]);
                          // print(resp["data"][0][0]["email"]);
                          // print(resp["data"][0][0]["phone"]);
                          // print(resp["data"][0][0]["city"]);
                          // print(resp["data"][0][0]["pincode"]);

                          // sp!.putString(
                          //     SpUtil.MOBILE_NUMBER, loginModel.user!.mobile!);
                          // sp!.putString(
                          //     SpUtil.USER_EMAIL, loginModel.user!.email!);
                          // sp!.putString(SpUtil.TOKEN, loginModel.token!);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomePage()));
                        } else {
                          showToastMessage(resp["message"]);
                        }
                      }
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2.0, color: const Color(0xFFf69b03)),
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                              color: Color(0xFFf69b03),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    InkWell(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginPage()));
                      },
                      child: Text(
                        ' Login',
                        style: TextStyle(
                            color: Color(0xFFf69b03),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Center(
                    child: Text(
                      'By creating an account, you agree to',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Center(
                    child: Text(
                      'our ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text('Terms \$ Condition ',
                          style: TextStyle(color: Color(0xFFf69b03))),
                    ),
                    Text('and', style: TextStyle(color: Colors.white)),
                    InkWell(
                      onTap: () {},
                      child: Text(' Privacy Policy',
                          style: TextStyle(color: Color(0xFFf69b03))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
