
// ignore_for_file: prefer_const_constructors

import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';
class Add_New_Product extends StatefulWidget {
  const Add_New_Product({Key? key}) : super(key: key);

  @override
  State<Add_New_Product> createState() => _Add_New_ProductState();
}

class _Add_New_ProductState extends State<Add_New_Product> {
  
  final List<String> items = [
  'Select Category',
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
                child: Text("Upload Product",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
             
              Container(padding: EdgeInsets.only(top: 30), child: Text('Category *',style: TextStyle(color: Colors.white,))),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomDropdownButton2(   
                    hint: 'Select Category',
                    dropdownItems: items,
                    icon: Icon(Icons.arrow_drop_down,size: 30,),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },buttonWidth: MediaQuery.of(context).size.width,
                      buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                  ),
              ),
               Container(padding: EdgeInsets.only(top: 30), child: Text('Sub Category *',style: TextStyle(color: Colors.white,))),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomDropdownButton2(  
                    hint: 'Select SubCategory',
                    dropdownItems: items,
                    icon: Icon(Icons.arrow_drop_down,size: 30,),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },buttonWidth: MediaQuery.of(context).size.width,buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                      
                  ),
              ),   
              Container(padding: EdgeInsets.only(top: 30), child: Text('Title *',style: TextStyle(color: Colors.white,))),
               
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(height: 40,
                  child: TextField(
                    
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true, 
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        // borderSide:
                        //     const BorderSide(width: 1, color: Colors.black26),
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.black26),
                        ),
                      ),
                      // contentPadding: EdgeInsets.symmetric(horizontal:10.0),
                      
                     
                    ),
                  ),
                ),

                 Container(padding: EdgeInsets.only(top: 30), child: Text('MRP *',style: TextStyle(color: Colors.white,))),
               
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(height: 40,
                
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                     
                      border: InputBorder.none,
                      filled: true, 
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        // borderSide:
                        //     const BorderSide(width: 1, color: Colors.black26),
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.black26),
                        ),
                         contentPadding: EdgeInsets.symmetric(horizontal:10.0),
                         hintText: '0.00',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF9b9b9b,
                            ),
                      ),
                      ),
                     
                      
                     
                    ),
                  ),
                ),
                 Container(padding: EdgeInsets.only(top: 30), child: Text('Price *',style: TextStyle(color: Colors.white,))),
               
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(height: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true, 
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        // borderSide:
                        //     const BorderSide(width: 1, color: Colors.black26),
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.black26),
                        ),
                         contentPadding: EdgeInsets.symmetric(horizontal:10.0),
                         hintText: '0.00',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF9b9b9b,
                            ),
                      ),
                      ),
                      
                      
                     
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
