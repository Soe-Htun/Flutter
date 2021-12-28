import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyExpanableCardViewFlutter extends StatefulWidget {
  @override
  _MyExpanableCardViewFlutterState createState() =>
      _MyExpanableCardViewFlutterState();
}
class _MyExpanableCardViewFlutterState
    extends State<MyExpanableCardViewFlutter> {
  //controller for TextField
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context)
                  .size
                  .width, // container width depending on user device screen width
              height: 260.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1558981852-426c6c22a060?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"))),
            ),
          ),
          ExpansionTile(
            title: Text("Harley-Davidson"),
            subtitle: Text("  Explore the world of H-D"),
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                  color: Colors.amber,
                  size: 32,
                ),
                child: StarDisplay(value: 3),
              ),
              Text("This image has 3 star rating ")
            ],
          ),
          ExpansionTile(
            title: Text("LOGIN FORM"),
           // trailing: Icon(FontAwesomeIcons.signInAlt),
           trailing: Icon(Icons.login),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: username_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: password_controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, bottom: 12),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    String username = username_controller.text;
                    String password = password_controller.text;
                    if (username != '' && password != '') {
                      print('Successfull');
                      print(" Value Entered in USERNAME " + username);
                      print("Password entered is : " + password);
                    }
                  },
                  child: Text("Log-In"),
                ),
              ),
              // SizedBox(height: 10 )
            ],
          ),
        ],
      ),
    ));
  }
}
class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}