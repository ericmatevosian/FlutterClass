import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'Container.dart';
import 'dart:math';
import 'dart:async'; // timer
import 'MyPage1.dart';
import 'MyPage2.dart';
import 'MyPage3.dart';

void main() {
  runApp(const MyApp());
}

/// Containter Widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // Containter with decoration property
//     return  MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "Containter",
//               textAlign: TextAlign.end,
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           //mainAxisSize: MainAxisSize.min,
//           children: [
//             Center(
//               child: Container(
//                 alignment: Alignment.center, // for child of containter
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.indigo[400],
//                   borderRadius:
//                   BorderRadius.circular(25), // to make the edges round
//                   //shape: BoxShape.circle  //If it is a rectangle, then the borderRadius property controls the
//                   border: Border.all(
//                     width: 10,
//                     color: Colors.indigo.shade800,
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.shade600,
//                       offset: Offset(10,10),
//                       blurRadius: 15,
//                       spreadRadius: 5,
//                     ),
//                     BoxShadow(
//                       color: Colors.grey.shade600,
//                       offset: Offset(-1,-1),
//                       blurRadius: 50,
//                       spreadRadius: 1,
//                     ),
//
//                   ],
//                 ),
//                 child: Text(
//                   "Containter",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }  // //// Containter Widget

/// Expanded Widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "Expanded",
//               textAlign: TextAlign.end,
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               flex: 3,
//               child: Container(
//                 height: 150,
//                 width: double.infinity,
//                 color: Colors.indigo.shade900,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 150,
//                 width: double.infinity,
//                 color: Colors.indigo.shade600,
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 150,
//                 width: double.infinity,
//                 color: Colors.indigo.shade300,
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

/// ListView Widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "ListView",
//               textAlign: TextAlign.end,
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//         ),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//
//           children: [
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//             ListViewContainters(),
//
//
//           ],
//         )
//       ),
//     );
//   }
// }

/// ListView.builder Widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const List<String> entries = ["A", "B", "C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T"];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: Center(
//               child: Text(
//                 "ListView.builder",
//                 textAlign: TextAlign.end,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//           body: ListView.builder(
//               shrinkWrap: true,
//               itemCount: 20,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 150,
//                     color: Colors.indigo[900],
//                     child: Center(
//                         child: MaterialButton(
//                           onPressed: (){
//                             print("Button ${entries[index]} pressed");
//                           },
//                           child: Text(
//                             "Entry ${entries[index]}",
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.yellow.shade900
//                             ),
//                           ),
//                         )),
//                   ),
//                 );
//               })),
//     );
//   }
// }

/// ListView.builder_2 Widget
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const List<String> entries = [
//     "A",
//     "B",
//     "C",
//     "D",
//     "E",
//     "F",
//     "G",
//     "H",
//     "I",
//     "J",
//     "K",
//     "L",
//     "M",
//     "N",
//     "O",
//     "P",
//     "Q",
//     "R",
//     "S",
//     "T"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       color: Colors.grey.shade600,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: Center(
//               child: Text(
//                 "ListView.builder_2",
//                 textAlign: TextAlign.end,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//           body: ListView.builder(
//               shrinkWrap: true,
//               itemCount: 20,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Container(
//                     color: Colors.black,
//                     child: ListTile(
//                       focusColor: Colors.red,
//                       title: Text(
//                         "Entry ${entries[index]}",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.indigo,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       leading: Icon(
//                         Icons.add,
//                         color: Colors.white,
//                       ),
//                       trailing: Icon(
//                         Icons.settings,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 );
//               })),
//     );
//   }
// }

/// GridView.count
//  class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       color: Colors.grey.shade600,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: Center(
//               child: Text(
//                 "GridView.count",
//                 textAlign: TextAlign.end,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//           body: GridView.count(
//             crossAxisSpacing: 1,
//             crossAxisCount: 6,
//             children: [
//               Containers(),
//               Containers(),
//               Containers(),
//               Containers(),
//               Containers(),
//               Containers(),
//               Containers(),
//               Containers(),
//
//
//             ],
//           )
//       ),
//     );
//   }
// }

/// GridView.builder
//  class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       color: Colors.grey.shade600,
//       home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             title: Center(
//               child: Text(
//                 "GridView.builder",
//                 textAlign: TextAlign.end,
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//           body: GridView.builder(
//             itemCount: 100,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//           ),
//               itemBuilder: (context,index){
//               return Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Container(
//                   color: Colors.grey.shade600,
//                   child: Center(
//                     child: Text(
//                       index.toString(),
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.yellow,
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//        }
//       ),
//     ),
//     );
//   }
// }

///Animated Container
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   double  _width = 200;
//   double  _height = 100;
//   double  _round = 10;
//   Color   _color = Colors.blue;
//   List colors=[
//   Colors.red,
//   Colors.yellow,
//   Colors.indigo,
//   Colors.black,
//   Colors.teal,
//   Colors.green,
//   Colors.purple,
//   Colors.brown,
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SafeArea(
//         child: Scaffold(
//           body: Column(
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: AnimatedContainer(
//                   duration: Duration(milliseconds: 1000),
//                   width: _width,
//                   height: _height,
//                   curve: Curves.linear,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(_round),
//                     color: _color,
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: SizedBox(),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   width: double.infinity,
//                   color: Colors.grey,
//                   child: MaterialButton(
//                     onPressed: (){
//                       setState((){
//                         _width = Random().nextInt(400).toDouble();
//                         _round = Random().nextInt(50).toDouble();
//                         _color = colors[Random().nextInt(7)];
//                         print(
//                             "The width is = ${_width}  "
//                             "The Roundes is = ${_round} "
//                              "The Color is = ${_color.toString()}"
//                         );
//                       });
//                     },
//                     child: Text(
//                       "TapOnMe",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//
//   }
// }

///Gesture Detector
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int _shade = 100;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 height: 250,
//                 width: 250,
//                 decoration: BoxDecoration(
//                   color: Colors.blue[_shade],
//                   border: Border.all(width: 15)
//                 ),
//                 child:  GestureDetector(
//                     onTap: (){
//
//                       setState((){
//                         if(_shade==100) {
//                           _shade = 500;
//                         }
//                         else if(_shade == 500) {_shade =100;}
//                         else {_shade = 100;}
//
//                         print("On Tap = ${_shade}");
//
//                       });
//                     },
//                   onVerticalDragStart: (DragStartDetails dragStartDetails){
//                     setState((){
//                       _shade = 900;
//                     });
//                     print("On onVerticalDragStart = ${_shade}");
//                   },
//                 ),
//               ),
//             ),
//             Center(
//               child: Text(
//                 "Tap on the box and drag Down",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 40,
//                 ),
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }

/// Timer.periodic
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int Time_left = 10;
//   Color _color = Colors.white;
//   void CountDown(){
//        Timer.periodic(Duration(seconds: 1), (timer) {
//       setState((){
//         if(Time_left > 0){ Time_left--;}
//         else {
//           timer.cancel();
//           _color = Colors.red;
//         }
//
//       });
//     }
//     );
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Text(
//                 "${Time_left} seconds left!",
//                 style: TextStyle(
//                   fontSize: 50,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             SizedBox(height: 50,),
//             Container(
//               width: 100,
//               child: MaterialButton(
//                   onPressed: (){
//                     _color = Colors.white;
//                     Time_left =11;
//                     CountDown();
//                   },
//                   color: Colors.red,
//                   child: Center(
//                     child: Text(
//                     "Start",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//
//               ),
//               ),
//                   ),
//               ),
//             ),
//             Text(
//               "Timer is Over!",
//               style: TextStyle(
//                 color: _color,
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

///Timer
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   Color _color = Colors.white;
//
//   Timer scheduleTimeout([int milliseconds = 10000]) =>
//       Timer(Duration(milliseconds: milliseconds), handleTimeout);
//
//   void handleTimeout() {
//           setState((){
//             _color = Colors.red;
//           });
//
//               }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 50,),
//             Container(
//               width: 100,
//               child: MaterialButton(
//                   onPressed: (){
//                     scheduleTimeout(5 * 1000); // 5 seconds.
//                   },
//                   color: Colors.red,
//                   child: Center(
//                     child: Text(
//                     "Start",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//
//               ),
//               ),
//                   ),
//               ),
//             ),
//             Text(
//               "Timer is Over!",
//               style: TextStyle(
//                 color: _color,
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

///MediaQuery
// I put this widget in 2 different classes to solve "No Query Widet Found" error
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Text(
//               MediaQuery.of(context).orientation.toString(),
//               style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Center(
//             child: Text(
//               MediaQuery.of(context).size.height.round().toString(),
//               style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Center(
//             child: Text(
//               MediaQuery.of(context).size.width.round().toString(),
//               style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

/// Alert Dialog
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MaterialButton(
//           color: Colors.grey.shade400,
//           onPressed: () {
//             print("Button Pressed");  // user must tap button!
//             showDialog(
//                 //barrierColor: Colors.black,
//                 barrierDismissible: false,
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     backgroundColor: Colors.grey.shade200,
//                     title: Text(
//                       "Warning!",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 30,
//                       ),
//                     ),
//                     content: Text(
//                       "Done",
//                       style: TextStyle(
//                         fontSize: 20,
//                       ),
//                     ),
//                     actions: [
//                       TextButton(
//                           onPressed:(){
//                             Navigator.pop(context);
//                             print("User pressed Ok");
//                             },
//                           child: Text("OK")),
//                       TextButton(
//                           onPressed:(){
//                             Navigator.pop(context);
//                             print("User pressed Cancel");
//                           },
//                           child: Text("Cancel")),
//                       TextButton(
//                           onPressed:(){
//                             Navigator.pop(context);
//                             print("User pressed 'I don't know' ");
//                           },
//                           child: Text("I donw know!")),
//
//
//                     ],
//                   );
//                 });
//           },
//           child: Text(
//             "Show Alert Dialog",
//             style: TextStyle(
//               color: Colors.indigo.shade900,
//               fontSize: 45,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

///AppBar
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: (){
//               print("Menu Button Pressed");
//             },
//             icon: Icon(
//               Icons.menu,
//               color: Colors.white,
//               size: 30,
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: (){
//                 print("Share Button Pressed");
//               },
//               icon: Icon(
//                 Icons.share_outlined,
//                 color: Colors.white,
//                 size: 30,
//               ),
//             ),
//
//           ],
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "AppBar Widget",
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Colors.white
//               ),
//             ),
//           ),
//         ),
//         body: Center(
//           child: Text(
//               "AppBar",
//           style: TextStyle(
//           fontSize: 40,
//           color: Colors.black,
//           ),
//         ),
//        ),
//       ),
//     );
//
//   }
// }

///Drawer
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "SLider Widget",
//               style: TextStyle(fontSize: 25, color: Colors.white),
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.share_outlined),
//             ),
//           ],
//         ),
//         drawer: Container(
//           width: 250,
//           child: Drawer(
//             backgroundColor: Colors.grey.shade300,
//             child: ListView(
//               children: [
//                 Container(
//                   height: 55,
//                   child: DrawerHeader(
//                     child: Center(
//                       child: Text(
//                         "Rizelectron",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     decoration: BoxDecoration(color: Colors.indigo.shade900),
//                   ),
//                 ),
//                 ListTile(
//                   leading: IconButton(
//                     //Home Button
//                     onPressed: () {print("'Home' button is Pressed");},
//                     icon: Icon(Icons.home_filled),
//                   ),
//                   title: TextButton(
//                     onPressed: (){print("'Home' button is Pressed");},
//                     child: Text(
//                       "Home",
//                       style: TextStyle(fontSize: 18,color: Colors.black),
//                     ),
//                     style: ButtonStyle(
//                         alignment: Alignment.centerLeft
//                     ),
//                   ),
//                 ),
//                 ListTile(
//                   leading: IconButton(
//                     //Contact Button
//                     onPressed: () {print("'Contact us' button is Pressed");},
//                     icon: Icon(Icons.phone),
//                   ),
//                   title: TextButton(
//                     onPressed: (){print("'Contact us' button is Pressed");},
//                     child: Text(
//                       "Contact us",
//                       style: TextStyle(fontSize: 18,color: Colors.black),
//                     ),
//                     style: ButtonStyle(
//                         alignment: Alignment.centerLeft
//                     ),
//                   ),
//                 ),
//                 ListTile(
//                   leading: IconButton(
//                     //Website Button
//                     onPressed: () {print("'WebSite' button is Pressed");},
//                     icon: Icon(Icons.web),
//                   ),
//                   title: TextButton(
//                     onPressed: (){print("'Website' button is Pressed");},
//                     child: Text(
//                       "Visit Website",
//                       style: TextStyle(fontSize: 18,color: Colors.black),
//                     ),
//                     style: ButtonStyle(
//                       alignment: Alignment.centerLeft
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

///Slider
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   double SliderNumber = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "Slider Widget",
//               style: TextStyle(fontSize: 25, color: Colors.white),
//             ),
//           ),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//               child: Text(
//                 "${SliderNumber}",
//                 style: TextStyle(
//                   fontSize: 40,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Slider(
//                 min: 0,
//                 max: 100,
//                 divisions: 100,
//                 value: SliderNumber,
//                 onChanged: (double value){
//                   setState((){
//                     SliderNumber = value.round().toDouble();
//                   });
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

///Stack
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: 250,
//                   height: 250,
//                   color: Colors.black,
//                 ),
//                 Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.red,
//                 ),
//                 Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.blue,
//                 ),
//               ],
//             ),
//             Stack(
//               children: [
//                 Center(
//                   child: Container(
//                     width: 400,
//                     height: 250,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.black.withAlpha(5),
//                           Colors.black12,
//                           Colors.black45,
//                         ],
//                       )
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Stack",
//                         style: TextStyle(
//                           fontSize: 30,
//                           color: Colors.black
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

///PageView

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyPageView(),
//     );
//   }
// }
//
// class MyPageView extends StatelessWidget {
//   MyPageView({Key? key}) : super(key: key);
//   final _controller = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         scrollDirection: Axis.vertical,
//         controller: _controller,
//         children: [
//           MyPage1(),
//           MyPage2(),
//           MyPage3(),
//         ],
//       ),
//     );
//   }
// }

///TextField
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyTextField(),
//     );
//   }
// }
//
// class MyTextField extends StatefulWidget {
//   const MyTextField({Key? key}) : super(key: key);
//
//   @override
//   State<MyTextField> createState() => _MyTextFieldState();
// }
//
// class _MyTextFieldState extends State<MyTextField> {
//   TextEditingController  _controller = TextEditingController();
//
//
//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Center(
//           child: Text(
//             "TextField",
//             textAlign: TextAlign.end,
//             style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white),
//           ),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               width: 350,
//               child: TextField(
//                 controller: _controller,
//                 autocorrect: true,
//                 cursorWidth: 2,
//                 cursorColor: Colors.black,
//                 decoration: InputDecoration(
//                     suffixIcon: Icon(Icons.add),
//                     labelText: "Message",
//                     border: OutlineInputBorder(),
//                     hintText: "Enter Your Message",
//                     filled: true,
//                     fillColor: Colors.grey.shade300
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             onPressed: (){
//               showDialog(
//                   context: context,
//                   builder: (context){
//                     return AlertDialog(
//                       content: Text(
//                           _controller.text,
//                         style: TextStyle(
//                           fontSize: 40,
//                         ),
//                       ),
//                     actions: [
//                       TextButton(
//                           onPressed:(){
//                             _controller.clear();
//                             Navigator.of(context).pop();
//                           },
//                           child: Text("Clear")
//                       )
//                     ],
//                     );
//                   }
//               );
//
//             },
//             icon: Icon(Icons.text_fields), iconSize: 40,)
//         ],
//       ),
//     );
//   }
// }

///BottomNavigationBar

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int _myindex = 0;
//
//   void setIndex(int index){
//     setState((){
//       _myindex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Center(
//             child: Text(
//               "BottomNavigationBar",
//               textAlign: TextAlign.end,
//               style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//         ),
//         body: Center(
//           child: Text(
//               "Bottom Navigation Bar",
//             style: TextStyle(
//               fontSize: 38,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _myindex,
//           type: BottomNavigationBarType.fixed,
//           onTap: setIndex,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//             BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
//             BottomNavigationBarItem(icon: Icon(Icons.phone), label: "ContactUs"),
//             BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
//           ],
//         ),
//       ),
//     );
//   }
// }


///DatePicker
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _datePicker(),
//       ),
//     );
//   }
// }
//
// class _datePicker extends StatefulWidget {
//   const _datePicker({Key? key}) : super(key: key);
//
//   @override
//   State<_datePicker> createState() => _datePickerState();
// }
//
// class _datePickerState extends State<_datePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//         onPressed: (){
//           showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(1900),
//               lastDate: DateTime(2100)
//           );
//         },
//       child: Center(
//         child: Text(
//           "Show Calender",
//           style: TextStyle(
//             fontSize: 40,
//             color: Colors.blue.shade900,
//           )
//         ),
//       ),
//     );
//   }
// }

///DatePicker Persian

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _datePicker(),
//       ),
//     );
//   }
// }
//
// class _datePicker extends StatefulWidget {
//   const _datePicker({Key? key}) : super(key: key);
//
//   @override
//   State<_datePicker> createState() => _datePickerState();
// }
//
// class _datePickerState extends State<_datePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//         onPressed: (){
//           showPersianDatePicker(
//               context: context,
//               initialDate: Jalali.now(),
//               firstDate: Jalali(1300),
//               lastDate: Jalali(1500),
//           );
//         },
//       child: Center(
//         child: Text(
//           "Show Persian Calender",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 40,
//             color: Colors.blue.shade900,
//           )
//         ),
//       ),
//     );
//   }
// }


///TimePicker

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: _timePicker(),
//       ),
//     );
//   }
// }
//
// class _timePicker extends StatefulWidget {
//   const _timePicker({Key? key}) : super(key: key);
//
//   @override
//   State<_timePicker> createState() => _timePickerState();
// }
//
// class _timePickerState extends State<_timePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//         onPressed: (){
//           showTimePicker(context: context, initialTime: TimeOfDay.now());
//         },
//       child: Center(
//         child: Text(
//           "Show Time",
//           style: TextStyle(
//             fontSize: 40,
//             color: Colors.blue.shade900,
//           )
//         ),
//       ),
//     );
//   }
// }