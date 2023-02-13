import 'package:batliwala/screen/SplashScreen.dart';
import 'package:batliwala/utils/shared_preferences.dart';
import 'package:flutter/material.dart';

SpUtil? sp;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  sp = await SpUtil.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Batlwala',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstSplash(),
    );
  }
}
