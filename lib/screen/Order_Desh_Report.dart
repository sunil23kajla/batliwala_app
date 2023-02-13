// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class OrderDespReport extends StatefulWidget {
  const OrderDespReport({Key? key}) : super(key: key);

  @override
  State<OrderDespReport> createState() => _OrderDespReportState();
}

class _OrderDespReportState extends State<OrderDespReport> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  TextEditingController dob = TextEditingController();
  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/loginbg.jpg',
                ),
                fit: BoxFit.fill),
            border: Border.all(width: 3, color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Order Despached Report",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                child: Text(
                  "All Customer order Report",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 25.0, top: 25.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text(
                            'From Date',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 1.0, right: 1.0, top: 1.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Flexible(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                              color: Colors.white,borderRadius: BorderRadius.circular(6)),
                          child: DateTimeField(
                            controller: dob,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              hintText: "",
                              fillColor: Colors.white,
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
                      ),
                    ],
                  )),
                   Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 25.0, top: 25.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text(
                            'To Date',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 1.0, right: 1.0, top: 1.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Flexible(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                              color: Colors.white,borderRadius: BorderRadius.circular(6)),
                          child: DateTimeField(
                            controller: dob,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              hintText: "",
                              fillColor: Colors.white,
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
                      ),
                    ],
                  )),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('City',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomDropdownButton2(
                  hint: '--Select City--',
                  dropdownItems: items,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonWidth: MediaQuery.of(context).size.width,
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Customers',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomDropdownButton2(
                  hint: '--Select Customer--',
                  dropdownItems: items,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonWidth: MediaQuery.of(context).size.width,
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Status',
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomDropdownButton2(
                  hint: 'All',
                  dropdownItems: items,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonWidth: MediaQuery.of(context).size.width,
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
             
            ],
          ),
        ),
      )),
    );
  }
}
