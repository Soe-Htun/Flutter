import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override

  const SignUp({Key key}) : super(key: key);
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController namectrl,emailctrl,passctrl;

  @override
  void initState(){
    super.initState();
    namectrl = new TextEditingController();
    emailctrl = new TextEditingController();
    passctrl = new TextEditingController();
  }
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        TextField(
          controller: namectrl,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            hintText: 'Name'
          ),
        ),

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
          child: Text('Sign Up',
          style: GoogleFonts.varelaRound(
            fontSize: 18.0,
            color: Colors.blue
          ),),
        )
      ],
    );
  }
}