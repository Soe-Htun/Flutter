import 'package:flutter/material.dart';
import 'package:navigation_drawer/constants.dart';
import 'package:navigation_drawer/components/DetailsScreen.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget> [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top:5,
                        bottom: 10
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image: NetworkImage('https://www.clipartmax.com/png/middle/171-1717870_stockvader-predicted-cron-for-may-user-profile-icon-png.png'),
                        //   fit: BoxFit.fill,
                        //   ),
                        image: DecorationImage(
                          image: AssetImage('graphics/images/profile.jpg'),
                           fit: BoxFit.fill,
                        )
                         
                      ),
                    ),
                    Text("Soe Htun", 
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ),
                    ),

                    Text("soehtun@gmail.com",
                      style: TextStyle(
                        // fontSize: 18,
                        color: Colors.white
                      ),
                    )
                  ],
                ),
              ),

              // decoration: BoxDecoration(
              //   color: Theme.of(context).primaryColor,
              //   image: DecorationImage(
              //     image: AssetImage('graphics/images/profile.jpg'))
              // ),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 18
                )
              )
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 18
                ),
              ),
            )
          ],
        )
      );
  }
}