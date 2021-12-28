import 'package:flutter/material.dart';
import 'package:flutter_login_mysql/components/login/login.dart';
import 'package:flutter_login_mysql/components/login/signUp.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool signin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter Login'),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: 150,
            ),
            BoxUi()
          ],
        ),
      ),
    );
  }

  void changeState() {
    if (signin) {
      setState(() {
        signin = false;
      });
    } else {
      setState(() {
        signin = true;
      });
    }
  }

  Widget BoxUi() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'Sign In',
                    style:
                        TextStyle(color: signin == true ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                  ),
                ),
                FlatButton(
                  onPressed: () => changeState(),
                  child: Text(
                    'Sign Up',
                    style:
                        TextStyle(color: signin != true ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                  ),
                ),
              ],
            ),

            signin == true ? SignIn() : SignUp(),
          ],
        ),
      ),
    );
  }
}
