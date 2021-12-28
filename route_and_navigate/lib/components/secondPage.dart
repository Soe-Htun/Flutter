import 'package:flutter/material.dart';
import 'package:route_and_navigate/components/firstPage.dart';
import 'package:route_and_navigate/constants.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize:MainAxisSize.min ,
          children: [
            Text("Second Page",
            style: TextStyle(
              fontSize: 50
            ),
            ),

            SizedBox(height: 20),

            RaisedButton(
              
              color: kPrimaryColor,
              textColor: Colors.white,
              child: Text(
                'Go to First Page',
                // style: BorderRadius(
                //   BorderRadius.circular(20)
                // ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
              },
            )
          ],
          ),
      ),
    );
  }
}