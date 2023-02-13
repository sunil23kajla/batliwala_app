import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
      body: Container(
        
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
                    'FORGOT PASSWORD',
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
                  child: Text('MOBILE NO.',style: TextStyle(color:Color(0xFFf69b03),fontSize: 14),),alignment: Alignment.topLeft,
                ),
              ),
              SizedBox(height: 42,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.greenAccent),
                    // ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFFc1c1c1)),
                      
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color(0xFFf69b03),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal:10.0),
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
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(height: 42,
                    child: Container(
                      decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: const Color(0xFFf69b03)),
                      borderRadius: BorderRadius.circular(4)
                      ),
                      child: Center(
                        child: FlatButton (
                          onPressed: (){}, child:Text('SEND OTP',style: TextStyle(color: Color(0xFFf69b03),fontWeight: FontWeight.w700),),
                        ),
                      ),
                    )
                ),
                  ),
               Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',style: TextStyle(color: Color(0xFFFFFFFF))),
                      InkWell (
                          onTap: (){
                            Navigator.pop(context);
                          }, child:Text(' Login',style: TextStyle(color: Color(0xFFf69b03),fontWeight: FontWeight.w500),),
                        ),
                    ],
                  ),
               
            ],
          ),
        ),
      ),
    );
  }
}
