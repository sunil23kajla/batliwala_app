import 'dart:async';

import 'package:batliwala/main.dart';
import 'package:batliwala/screen/Home_page.dart';
import 'package:batliwala/screen/RegisterScreen.dart';
import 'package:batliwala/utils/shared_preferences.dart';
import 'package:flutter/material.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({Key? key}) : super(key: key);

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  late bool check = false;

  @override
  void initState() {
    super.initState();
    check = sp!.getBool(SpUtil.IS_LOGGED_IN) ?? false;
    print(check);
    print(check);

    print(check);

    Timer(const Duration(seconds: 5), () {
      check
          ? Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage()))
          : Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()));
    });
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/Splash.gif',
                        ),
                        fit: BoxFit.fill)),
                padding: const EdgeInsets.all(4.0),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFF4D9995),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
