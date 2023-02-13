import 'package:batliwala/screen/AddNewProduct.dart';
import 'package:batliwala/screen/Order_Desh_Report.dart';
import 'package:batliwala/screen/Order_report.dart';
import 'package:batliwala/screen/Payment_Report.dart';
import 'package:batliwala/screen/View_Invoice.dart';
import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      body: SizedBox.expand(
        child: PageView(
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {});
            },
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    height: MediaQuery.of(context).size.height * .05,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFC79C4D),
                    child: const Text(
                      'Welcome to,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  topCard(Icons.card_travel, "RECENT ORDERS", 5200, .5),
                  topCard(Icons.card_travel, "ORDER DELIVERD", 92050, .2),
                  topCard(Icons.card_travel, "TOTLE ORDER", 114382, .7),
                  topCard(Icons.card_travel, "TOTLE PRODUCTS", 163921, .4),
                  Container(
                      height: MediaQuery.of(context).size.height * .27,
                      color: Color(0xFFFFFFFF),
                      child: GridView.count(
                        childAspectRatio: 3 / 2.5,
                        crossAxisCount: 3,
                        // mainAxisSpacing: 0,
                        // crossAxisSpacing: 0,
                        //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        // crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 4),

                        children: menuList.map<Widget>((e) {
                          return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Column(children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (e['screen'].toString() ==
                                        'Add_New_Product') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Add_New_Product()));
                                    } else if (e['screen'].toString() ==
                                        'OrderDespReport') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderDespReport()));
                                    } else if (e['screen'].toString() ==
                                        'OrderReport') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderReport()));
                                    } else if (e['screen'].toString() ==
                                        'ViewInvoice') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ViewInvoice()));
                                    } else if (e['screen'].toString() ==
                                        'PaymentReport') {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentReport()));
                                    }
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Center(child: Icon(e['icon'])),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color(0xFFdb9b39),
                                            Color(0xFF4d3307),
                                          ],
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    // padding: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      e['name'],
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xFF5c5c5c),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ]));
                          // Container(
                          //   // margin: EdgeInsets.symmetric(vertical: 7),
                          //   height: 50,
                          //   width: 50,
                          //   // ignore: sort_child_properties_last
                          //   child: Center(
                          //     child: IconButton(
                          //       icon: Icon(e['icon']),
                          //       onPressed: () {

                          //       },
                          //     ),
                          //   ),
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(100.0),
                          //       gradient: const LinearGradient(
                          //         begin: Alignment.topRight,
                          //         end: Alignment.bottomRight,
                          //         colors: [
                          //           Color(0xFFdb9b39),
                          //           Color(0xFF4d3307),
                          //         ],
                          //       )),
                          // ),
                          // SizedBox(
                          //   height: 13,
                          // ),
                          // Container(
                          //   padding: EdgeInsets.only(bottom: 20),
                          //   child: Text(
                          //     e['name'],
                          //     style: TextStyle(
                          //         fontSize: 10,
                          //         color: Color(0xFF5c5c5c),
                          //         fontWeight: FontWeight.w500),
                          //   ),
                          // ),

                          //   ],
                          // ),
                        }).toList(),
                      )
                      // Column(
                      //   children: [
                      //     Expanded(
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //         children: [
                      //           Column(
                      //             children: [
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 // margin: EdgeInsets.symmetric(horizontal: 20),
                      //                 height: 50,
                      //                 width: 50,
                      //                 child: Center(
                      //                   child: IconButton(
                      //                     icon: Icon(Icons.menu_sharp),
                      //                     onPressed: () {},
                      //                   ),
                      //                 ),
                      //                 decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(100.0),
                      //                     gradient: LinearGradient(
                      //                       begin: Alignment.topRight,
                      //                       end: Alignment.bottomRight,
                      //                       colors: [
                      //                         Color(0xFFdb9b39),
                      //                         Color(0xFF4d3307),
                      //                       ],
                      //                     )),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 child: Text(
                      //                   'Add New Product',
                      //                   style: TextStyle(
                      //                       fontSize: 10,
                      //                       color: Color(0xFF5c5c5c),
                      //                       fontWeight: FontWeight.w500),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //           Column(
                      //             children: [
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 // margin: EdgeInsets.symmetric(horizontal: 20),
                      //                 height: 50,
                      //                 width: 50,
                      //                 child: Center(
                      //                   child: IconButton(
                      //                     icon: Icon(Icons.content_paste),
                      //                     onPressed: () {},
                      //                   ),
                      //                 ),
                      //                 decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(100.0),
                      //                     gradient: LinearGradient(
                      //                       begin: Alignment.topRight,
                      //                       end: Alignment.bottomRight,
                      //                       colors: [
                      //                         Color(0xFFdb9b39),
                      //                         Color(0xFF4d3307),
                      //                       ],
                      //                     )),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 child: Text(
                      //                   'Order Despached\n          Report',
                      //                   style: TextStyle(
                      //                       fontSize: 10,
                      //                       color: Color(0xFF5c5c5c),
                      //                       fontWeight: FontWeight.w500),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //           Column(
                      //             children: [
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 // margin: EdgeInsets.symmetric(horizontal: 20),
                      //                 height: 50,
                      //                 width: 50,
                      //                 child: Center(
                      //                   child: IconButton(
                      //                     icon: Icon(Icons.content_paste),
                      //                     onPressed: () {},
                      //                   ),
                      //                 ),
                      //                 decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(100.0),
                      //                     gradient: LinearGradient(
                      //                       begin: Alignment.topRight,
                      //                       end: Alignment.bottomRight,
                      //                       colors: [
                      //                         Color(0xFFdb9b39),
                      //                         Color(0xFF4d3307),
                      //                       ],
                      //                     )),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 child: Text(
                      //                   'Order Report',
                      //                   style: TextStyle(
                      //                       fontSize: 10,
                      //                       color: Color(0xFF5c5c5c),
                      //                       fontWeight: FontWeight.w500),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.start,
                      //         children: [
                      //           Column(
                      //             children: [
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 35),
                      //                 height: 50,
                      //                 width: 50,
                      //                 child: Center(
                      //                   child: IconButton(
                      //                     icon: Icon(Icons.content_paste),
                      //                     onPressed: () {},
                      //                   ),
                      //                 ),
                      //                 decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(100.0),
                      //                     gradient: LinearGradient(
                      //                       begin: Alignment.topRight,
                      //                       end: Alignment.bottomRight,
                      //                       colors: [
                      //                         Color(0xFFdb9b39),
                      //                         Color(0xFF4d3307),
                      //                       ],
                      //                     )),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 child: Text(
                      //                   'View Inovice',
                      //                   style: TextStyle(
                      //                       fontSize: 10,
                      //                       color: Color(0xFF5c5c5c),
                      //                       fontWeight: FontWeight.w500),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //           Column(
                      //             children: [
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 margin: EdgeInsets.symmetric(horizontal: 45),
                      //                 height: 50,
                      //                 width: 50,
                      //                 child: Center(
                      //                     child: IconButton(
                      //                         onPressed: () {},
                      //                         icon: Icon(Icons.currency_rupee))),
                      //                 decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(100.0),
                      //                     gradient: LinearGradient(
                      //                       begin: Alignment.topRight,
                      //                       end: Alignment.bottomRight,
                      //                       colors: [
                      //                         Color(0xFFdb9b39),
                      //                         Color(0xFF4d3307),
                      //                       ],
                      //                     )),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Container(
                      //                 child: Text(
                      //                   'Payment Report',
                      //                   style: TextStyle(
                      //                       fontSize: 10,
                      //                       color: Color(0xFF5c5c5c),
                      //                       fontWeight: FontWeight.w500),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      ),
                ],
              ),
            ]),
      ),
    );
  }

  List menuList = [
    {
      "name": "Add New Product",
      "icon": Icons.menu,
      "screen": Add_New_Product,
    },
    {
      "name": "Order Despached Report",
      "icon": Icons.content_paste,
      "screen": OrderDespReport,
    },
    {
      "name": "Order Report",
      "icon": Icons.star_outline_outlined,
      "screen": OrderReport,
    },
    {
      "name": "View Invoice",
      "icon": Icons.text_snippet_outlined,
      "screen": ViewInvoice,
    },
    {
      "name": "Payment Report",
      "icon": Icons.currency_rupee,
      "screen": PaymentReport,
    },
  ];

  Widget topCard(icon, title, value, dividerValue) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Container(
            color: const Color(0xFFffffff),
            height: MediaQuery.of(context).size.height * .11,
            width: MediaQuery.of(context).size.width * .3,
            child: Center(
              child: Icon(
                icon,
                size: 50,
              ),
            ),
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 3),
                color: const Color(0xFFffffff),
                height: MediaQuery.of(context).size.height * .11,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                      ),
                      padding: const EdgeInsets.only(top: 3, left: 10),
                    ),
                    Container(
                      // ignore: sort_child_properties_last
                      child: Text("$value",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                      padding: EdgeInsets.only(top: 4, left: 10),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 1, top: 9),
                      child: Progresso(
                        progressStrokeWidth: 2,
                        backgroundStrokeWidth: 2,
                        progress: dividerValue,
                        progressColor: Color(0xFFada392),
                        backgroundColor: Color(0xFFcfcfcf),
                      ),
                    ),
                    Container(
                      // ignore: sort_child_properties_last
                      child: const Text('Know more',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13)),
                      padding: const EdgeInsets.only(top: 7, left: 10),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
