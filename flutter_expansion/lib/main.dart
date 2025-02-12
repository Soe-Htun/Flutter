import 'package:flutter/material.dart';
import 'package:flutter_expansion/view/ExpandCard.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Card View Widget"),
      
      ),
      body: SingleChildScrollView(
          child: MyExpanableCardViewFlutter()), //Wrapped into SingleChildScrollView because when click on TextField  keyboard will open and you may get error on screen "bottom overflowed by pixels flutter"
    );
  }
}
