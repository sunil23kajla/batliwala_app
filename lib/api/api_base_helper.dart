import 'dart:convert';
import 'dart:io';
import 'package:batliwala/api/api_url.dart';
import 'package:batliwala/api/app_exception.dart';
import 'package:batliwala/widgets/show_dilog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiBaseHelper {
  SharedPreferences? prefs;

  static loginApi(username, password) async {
    var responseJson;
    Map<String, String> body = {
      'phone': username,
      'password': password,
    };
    var headers = {
      "Accept": "application/json",
    };
    var url = Uri.parse(loginUrl);
    try {
      var data = await http.post(url, body: body, headers: headers);

      if (data.statusCode == 200 || data.statusCode == 201) {
        var utfDecode = utf8.decode(data.bodyBytes);
        responseJson = json.decode(utfDecode);
      } else {
        print(data.body);
      }
    } on SocketException {
      showErrroToastMessage("No Internet connection");
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  static registerApi(body) async {
    var responseJson;

    var headers = {
      "Accept": "application/json",
    };
    var url = Uri.parse(registerUrl);
    try {
      var data = await http.post(url, body: body, headers: headers);

      if (data.statusCode == 200 || data.statusCode == 201) {
        var utfDecode = utf8.decode(data.bodyBytes);
        responseJson = json.decode(utfDecode);
      } else {
        print(data.body);
      }
    } on SocketException {
      showErrroToastMessage("No Internet connection");
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
}
