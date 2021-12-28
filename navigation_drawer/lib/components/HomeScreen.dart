import 'package:flutter/material.dart';
import 'package:navigation_drawer/components/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget> [
            Text('We are in the Home Page now.',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                'Got to Details'
              ),
              onPressed: () {
               Navigator.pushNamed(context, '/details');
              },
            )
          ],),
      ),
    );
  }
}