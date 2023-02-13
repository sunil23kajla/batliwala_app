import 'dart:math';
import 'package:batliwala/screen/Home_Screen.dart';
import 'package:batliwala/screen/Order_Desh_Report.dart';

import 'package:batliwala/screen/Products_Screen.dart';
import 'package:batliwala/screen/Profile_Screen.dart';
import 'package:batliwala/screen/order_Screen.dart';
import 'package:batliwala/widgets/show_dilog.dart';
import 'package:progresso/progresso.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List ScreenList = [
      HomeScreen(),
      OrderDespReport(),
      // TextViewScreen(Colors.red,),
      ProductPage(),
      ProfileScreeen(),
    ];

    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/finallogo.png',
          fit: BoxFit.fill,
          height: 110,
          color: Color(0xFFf69b03),
        ),
        backgroundColor: Color(0xFF000000),
        actions: [
          IconButton(icon: Icon(Icons.notification_add), onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {}),
          IconButton(
              onPressed: () {
                showLogoutDialog(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SizedBox.expand(
        child: ScreenList[_currentIndex],
        // child: PageView(
        //   physics: NeverScrollableScrollPhysics(),
        //   controller: _pageController,
        //   onPageChanged: (index){
        //     setState(() {
        //       _currentIndex = index;
        //     });
        //   },
        //   children: [
        //     Column(
        //       children: [
        //         Container(
        //           padding: const EdgeInsets.only(top: 10, left: 15),
        //           height: MediaQuery.of(context).size.height * .05,
        //           width: MediaQuery.of(context).size.width,
        //           color: Color(0xFFC79C4D),
        //           child: const Text(
        //             'Welcome to,',
        //             style: TextStyle(
        //               fontWeight: FontWeight.bold,
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 5,
        //         ),
        //         topCard(Icons.card_travel, "RECENT ORDERS", 5200, .5),
        //         topCard(Icons.card_travel, "ORDER DELIVERD",92050, .2),
        //         topCard(Icons.card_travel, "TOTLE ORDER", 114382, .7),
        //         topCard(Icons.card_travel, "TOTLE PRODUCTS", 163921, .4),
        //         Container(
        //             height: MediaQuery.of(context).size.height*.27,
        //             color: Color(0xFFFFFFFF),
        //             child: GridView.count(
        //               crossAxisCount: 3,
        //               children: menuList
        //                   .map((e) => Column(
        //                         children: [
        //                           const SizedBox(
        //                             height: 10,
        //                           ),
        //                           Container(
        //                             // margin: EdgeInsets.symmetric(horizontal: 20),
        //                             height: 50,
        //                             width: 50,
        //                             // ignore: sort_child_properties_last
        //                             child: Center(
        //                               child: IconButton(
        //                                 icon: Icon(e['icon']),
        //                                 onPressed: () {},
        //                               ),
        //                             ),
        //                             decoration: BoxDecoration(
        //                                 borderRadius: BorderRadius.circular(100.0),
        //                                 gradient: const LinearGradient(
        //                                   begin: Alignment.topRight,
        //                                   end: Alignment.bottomRight,
        //                                   colors: [
        //                                     Color(0xFFdb9b39),
        //                                     Color(0xFF4d3307),
        //                                   ],
        //                                 )),
        //                           ),
        //                           SizedBox(
        //                             height: 13,
        //                           ),
        //                           Container(
        //                             child: Text(
        //                               e['name'],
        //                               style: TextStyle(
        //                                   fontSize: 10,
        //                                   color: Color(0xFF5c5c5c),
        //                                   fontWeight: FontWeight.w500),
        //                             ),
        //                           ),
        //                         ],
        //                       ))
        //                   .toList(),
        //             )
        //             // Column(
        //             //   children: [
        //             //     Expanded(
        //             //       child: Row(
        //             //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //             //         children: [
        //             //           Column(
        //             //             children: [
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 // margin: EdgeInsets.symmetric(horizontal: 20),
        //             //                 height: 50,
        //             //                 width: 50,
        //             //                 child: Center(
        //             //                   child: IconButton(
        //             //                     icon: Icon(Icons.menu_sharp),
        //             //                     onPressed: () {},
        //             //                   ),
        //             //                 ),
        //             //                 decoration: BoxDecoration(
        //             //                     borderRadius: BorderRadius.circular(100.0),
        //             //                     gradient: LinearGradient(
        //             //                       begin: Alignment.topRight,
        //             //                       end: Alignment.bottomRight,
        //             //                       colors: [
        //             //                         Color(0xFFdb9b39),
        //             //                         Color(0xFF4d3307),
        //             //                       ],
        //             //                     )),
        //             //               ),
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 child: Text(
        //             //                   'Add New Product',
        //             //                   style: TextStyle(
        //             //                       fontSize: 10,
        //             //                       color: Color(0xFF5c5c5c),
        //             //                       fontWeight: FontWeight.w500),
        //             //                 ),
        //             //               ),
        //             //             ],
        //             //           ),
        //             //           Column(
        //             //             children: [
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 // margin: EdgeInsets.symmetric(horizontal: 20),
        //             //                 height: 50,
        //             //                 width: 50,
        //             //                 child: Center(
        //             //                   child: IconButton(
        //             //                     icon: Icon(Icons.content_paste),
        //             //                     onPressed: () {},
        //             //                   ),
        //             //                 ),
        //             //                 decoration: BoxDecoration(
        //             //                     borderRadius: BorderRadius.circular(100.0),
        //             //                     gradient: LinearGradient(
        //             //                       begin: Alignment.topRight,
        //             //                       end: Alignment.bottomRight,
        //             //                       colors: [
        //             //                         Color(0xFFdb9b39),
        //             //                         Color(0xFF4d3307),
        //             //                       ],
        //             //                     )),
        //             //               ),
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 child: Text(
        //             //                   'Order Despached\n          Report',
        //             //                   style: TextStyle(
        //             //                       fontSize: 10,
        //             //                       color: Color(0xFF5c5c5c),
        //             //                       fontWeight: FontWeight.w500),
        //             //                 ),
        //             //               )
        //             //             ],
        //             //           ),
        //             //           Column(
        //             //             children: [
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 // margin: EdgeInsets.symmetric(horizontal: 20),
        //             //                 height: 50,
        //             //                 width: 50,
        //             //                 child: Center(
        //             //                   child: IconButton(
        //             //                     icon: Icon(Icons.content_paste),
        //             //                     onPressed: () {},
        //             //                   ),
        //             //                 ),
        //             //                 decoration: BoxDecoration(
        //             //                     borderRadius: BorderRadius.circular(100.0),
        //             //                     gradient: LinearGradient(
        //             //                       begin: Alignment.topRight,
        //             //                       end: Alignment.bottomRight,
        //             //                       colors: [
        //             //                         Color(0xFFdb9b39),
        //             //                         Color(0xFF4d3307),
        //             //                       ],
        //             //                     )),
        //             //               ),
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 child: Text(
        //             //                   'Order Report',
        //             //                   style: TextStyle(
        //             //                       fontSize: 10,
        //             //                       color: Color(0xFF5c5c5c),
        //             //                       fontWeight: FontWeight.w500),
        //             //                 ),
        //             //               )
        //             //             ],
        //             //           ),
        //             //         ],
        //             //       ),
        //             //     ),
        //             //     Expanded(
        //             //       child: Row(
        //             //         mainAxisAlignment: MainAxisAlignment.start,
        //             //         children: [
        //             //           Column(
        //             //             children: [
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 margin: EdgeInsets.symmetric(horizontal: 35),
        //             //                 height: 50,
        //             //                 width: 50,
        //             //                 child: Center(
        //             //                   child: IconButton(
        //             //                     icon: Icon(Icons.content_paste),
        //             //                     onPressed: () {},
        //             //                   ),
        //             //                 ),
        //             //                 decoration: BoxDecoration(
        //             //                     borderRadius: BorderRadius.circular(100.0),
        //             //                     gradient: LinearGradient(
        //             //                       begin: Alignment.topRight,
        //             //                       end: Alignment.bottomRight,
        //             //                       colors: [
        //             //                         Color(0xFFdb9b39),
        //             //                         Color(0xFF4d3307),
        //             //                       ],
        //             //                     )),
        //             //               ),
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 child: Text(
        //             //                   'View Inovice',
        //             //                   style: TextStyle(
        //             //                       fontSize: 10,
        //             //                       color: Color(0xFF5c5c5c),
        //             //                       fontWeight: FontWeight.w500),
        //             //                 ),
        //             //               ),
        //             //             ],
        //             //           ),
        //             //           Column(
        //             //             children: [
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 margin: EdgeInsets.symmetric(horizontal: 45),
        //             //                 height: 50,
        //             //                 width: 50,
        //             //                 child: Center(
        //             //                     child: IconButton(
        //             //                         onPressed: () {},
        //             //                         icon: Icon(Icons.currency_rupee))),
        //             //                 decoration: BoxDecoration(
        //             //                     borderRadius: BorderRadius.circular(100.0),
        //             //                     gradient: LinearGradient(
        //             //                       begin: Alignment.topRight,
        //             //                       end: Alignment.bottomRight,
        //             //                       colors: [
        //             //                         Color(0xFFdb9b39),
        //             //                         Color(0xFF4d3307),
        //             //                       ],
        //             //                     )),
        //             //               ),
        //             //               SizedBox(
        //             //                 height: 10,
        //             //               ),
        //             //               Container(
        //             //                 child: Text(
        //             //                   'Payment Report',
        //             //                   style: TextStyle(
        //             //                       fontSize: 10,
        //             //                       color: Color(0xFF5c5c5c),
        //             //                       fontWeight: FontWeight.w500),
        //             //                 ),
        //             //               )
        //             //             ],
        //             //           ),
        //             //         ],
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //             ),
        //       ],
        //     ),
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              // _pageController.jumpToPage(index);
              _currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.card_travel),
                title: Text('Order'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.production_quantity_limits_sharp),
                title: Text('Products'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Account'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
          ]),
    );
  }
}
