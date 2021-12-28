import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {

  const SignIn({Key key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  TextEditingController emailctrl, passctrl;

  @override
  void initState(){
    super.initState();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        TextField(
          controller: emailctrl,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            hintText: 'Email'
          ),
        ),

        TextField(
          controller: passctrl,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: 'Pass'
          ),
        ),

        SizedBox(height: 20),

        MaterialButton(
          onPressed: () {},
          child: Text('Sign In',
          style: GoogleFonts.varelaRound(
            fontSize: 18.0,
            color: Colors.blue
          ),),
        )
      ],
    );
  }
}