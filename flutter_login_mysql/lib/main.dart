import 'package:flutter/material.dart';
import 'package:flutter_login_mysql/components/body/home.dart';
import 'package:flutter_login_mysql/components/login/login.dart';

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
      
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
