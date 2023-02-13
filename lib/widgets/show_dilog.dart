import 'package:batliwala/main.dart';
import 'package:batliwala/screen/Login.dart';
import 'package:batliwala/screen/RegisterScreen.dart';
import 'package:batliwala/widgets/string.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showErrroToastMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      //message to show toast
      toastLength: Toast.LENGTH_LONG,
      //duration for message to show
      gravity: ToastGravity.BOTTOM,
      //where you want to show, top, bottom
      timeInSecForIosWeb: 1,
      //for iOS only
      backgroundColor: AppColors.red, //background Color for message
      textColor: AppColors.white,
      //message text color
      fontSize: 16.0 //message font size
      );
}

void showToastMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      //message to show toast
      toastLength: Toast.LENGTH_LONG,
      //duration for message to show
      gravity: ToastGravity.BOTTOM,
      //where you want to show, top, bottom
      timeInSecForIosWeb: 1,
      //for iOS only
      backgroundColor: AppColors.grey, //background Color for message
      textColor: AppColors.white,
      //message text color
      fontSize: 16.0 //message font size
      );
}

showLoader(context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return const SizedBox(
        height: 50,
        width: 50,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.yellow,
            // size: 70.0,
          ),
        ),
      );
    },
  );
}

showLogoutDialog(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 200,
            child: Column(
              children: <Widget>[
                const Text('Are you sure you want to logout?',
                    style: TextStyle(fontSize: 20)),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.black,
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          await sp!.clearImportantKeys();
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => LoginPage())),
                              (route) => false);
                          // logoutApi();
                        }),
                    RaisedButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}
