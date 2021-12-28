import 'package:bottom_navigation_across_route/components/home.dart';
import 'package:bottom_navigation_across_route/components/users.dart';
import 'package:bottom_navigation_across_route/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginActual = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),

        //Click nav bar
        body: _paginActual == 0 ? Home() : Users(),

        //Bottom Nav bar

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginActual = index;
            });
          },
          currentIndex: _paginActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Users")
          ],
        ),
      ),
    );
  }
}
