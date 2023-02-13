
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextViewScreen extends StatelessWidget {
  Color backColor;
  
  TextViewScreen(this.backColor);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: backColor,
        body: Container(child: Text('hello'),),
      );
    }
}

