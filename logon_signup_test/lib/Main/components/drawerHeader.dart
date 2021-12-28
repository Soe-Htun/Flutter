// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import '../../constants.dart';

// class DrawerHeader extends StatefulWidget {
//   const DrawerHeader({Key key,this.user, BoxDecoration decoration, Container child}) : super(key: key);
//  final User user;
//   @override
//   _DrawerHeaderState createState() => _DrawerHeaderState();
// }

// class _DrawerHeaderState extends State<DrawerHeader> {
 

//   @override
//   Widget build(BuildContext context) {
//     Size size= MediaQuery.of(context).size;
//     return  DrawerHeader(
//                 decoration: BoxDecoration(
//                   color: kDrawerColor
//                 ),
//                 // child: Text("This is Drawer Header"),
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget> [
//                       Container(
//                         width: 100,
//                         height: 100,
                        
//                         // margin: EdgeInsets.only(top: 5, bottom: 10),
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: AssetImage("assets/images/profile.jpg"),
//                             fit: BoxFit.fill
//                           )
//                         ),
//                       ),

//                       // Material(
//                       //   borderRadius: BorderRadius.all(Radius.circular(50)),
//                       //   child: Image.asset("assets/images/profile.jpg",
//                       //     width: 100, height: 100,
//                       //   ),
//                       // ),
//                       SizedBox(height: size.height * 0.01 ,),
//                       Text(widget.user.displayName,
//                       style: TextStyle(
//                         fontSize: 22,
//                         color: Colors.white
//                       ),
//                       ),
//                       SizedBox(height: size.height * 0.006 ,),
//                       Text(widget.user.email,
//                       style: TextStyle(
//                         color: Colors.white
//                       ),
//                       )
//                     ],
//                   ),
//                 ),
                
//               );
//   }
// }