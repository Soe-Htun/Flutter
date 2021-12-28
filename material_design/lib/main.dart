import 'package:flutter/material.dart';
import 'package:material_design/components/layouts/layout.dart';
import 'package:material_design/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: kDrawerColor
      ),
      // home: Layout(),

      initialRoute: '/',
     
      routes: {
        '/': (context) => Layout(),
        
        
      },
    );
  }
}

