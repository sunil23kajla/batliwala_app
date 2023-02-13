import 'package:batliwala/api/api_base_helper.dart';
import 'package:batliwala/main.dart';
import 'package:batliwala/screen/ForgotPassword.dart';
import 'package:batliwala/screen/Home_page.dart';
import 'package:batliwala/widgets/show_dilog.dart';
import 'package:flutter/material.dart';

import '../utils/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Image.asset(
      //     'assets/finallogo.png',
      //     fit: BoxFit.fill,
      //     height: 110,
      //     color: Color(0xFFf69b03),
      //   ),
      //   backgroundColor: Color(0xFF000000),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/loginbg.jpg',
                  ),
                  fit: BoxFit.fill)),
          height: MediaQuery.of(context).size.height,
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
                    alignment: Alignment.center,
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                          letterSpacing: 2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 13),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'USER NAME',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: username,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      // border: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.greenAccent),
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFFf69b03),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'Mobile No',

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
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'PASSWORD',
                      style: TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xFFc1c1c1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ForgotPassword()));
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xFF030303)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () async {
                        // showToastMessage(resp["result"]);
                        if (username.text.isEmpty) {
                          showToastMessage("Enter User Name");
                        } else if (password.text.isEmpty) {
                          showToastMessage("Enter Password");
                        } else {
                          showLoader(context);
                          var resp = await ApiBaseHelper.loginApi(
                              username.text.toString(),
                              password.text..toString());
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
                                        const HomePage()));
                          } else {
                            showToastMessage(resp["message"]);
                          }
                        }
                      },
                      child: Container(
                        height: 42,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: const Color(0xFFf69b03)),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Color(0xFFf69b03),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        ' Register',
                        style: TextStyle(
                            color: Color(0xFFf69b03),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
