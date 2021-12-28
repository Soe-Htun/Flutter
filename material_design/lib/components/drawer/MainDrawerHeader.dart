import 'package:flutter/material.dart';
import 'package:material_design/constants.dart';

class MainDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: kDrawerColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.fill
              )
            ),
          ),
          SizedBox(height: size.height * 0.01 ,),
          Text("Soe Htun",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          )
        ],
      ),
    );
  }
}