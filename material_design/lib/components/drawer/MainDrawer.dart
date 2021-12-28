import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:material_design/components/drawer/MainDrawerHeader.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget> [
            Container(
              height: 200,
              child: MainDrawerHeader()
            ),

            CustomListTile(Icons.person, 'Profile', () => {
              Navigator.of(context).pop()
            }),
            CustomListTile(Icons.notifications, 'Notifications', () => {
              Navigator.of(context).pop()
            }),
            CustomListTile(Icons.settings, 'Settings', () => {
              Navigator.of(context).pop()
            }),
            CustomListTile(Icons.lock, 'Log Out', () => {
              // Navigator.of(context).pop()
              showDialog(context: context, builder: (_) =>
                AlertDialog(
                  title: Center(
                    child: Text("Material Dialog"),
                  ),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text("Are you sure want to exit")
                    ],
                  ),
                  actions: <Widget> [
                    FlatButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text("Cancel")),

                    FlatButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                     child: Text("Ok"))
                  ],
                )
              )
            }),

          ],
        ),
      ),
    );
  }

  // Future<void> _showDialog() async {
  //   return showDialog(
  //     context: context,
  //     builder: (context){

  //     });
  // }

}

class CustomListTile extends StatelessWidget {
  @override
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);
  Widget build(BuildContext context) {
    return 
      // padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.white,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Row(
                  children: <Widget> [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                      child: Text(text),
                    ),
                  ],
                ),
                
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      );
  
  }
}