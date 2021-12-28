import 'package:flutter/material.dart';
import 'package:route_and_navigate/components/secondPage.dart';
import 'package:route_and_navigate/constants.dart';

class FirstPage extends StatelessWidget {
  bool isButtonPressed = false;
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: Center(
        child:Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'First Page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            
             SizedBox(height: 20),

            // Container(
            //   height: 40,
            //   width: 220,
      
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: GestureDetector(
            //       onTap: (){
            //         Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage() ));
            //       },
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
                    
            //         children: <Widget>[
            //           Center(
            //             child: Text("Go to Second Page"),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // )

            
            RaisedButton(
              color: kPrimaryColor,
              textColor: Colors.white,
              
              child: Text('Go to Second Page',),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage() ));
              } 
            )
          ],
        ) ,),
    );
  }
}