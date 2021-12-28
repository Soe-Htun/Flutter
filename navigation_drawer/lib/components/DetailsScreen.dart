import 'package:flutter/material.dart';
import 'package:navigation_drawer/components/main_drawer.dart';
import 'package:navigation_drawer/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              "We are in the details page now.",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),

            FloatingActionButton(
              child: Icon(Icons.arrow_back_ios),
              backgroundColor: kPrimaryColor,
              onPressed: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),
    );
  }
}