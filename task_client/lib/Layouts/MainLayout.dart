import 'package:flutter/material.dart';
import 'package:task_client/pages/buy.dart';
import 'package:task_client/pages/put.dart';
import 'package:task_client/pages/sell.dart';


class MainLayout extends StatelessWidget {
  //const MainLayout({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
        child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.indigo,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                children: <Widget> [
                  Container(
                    child: Image.asset('assets/images/99.png',
                      width: 18, 
                    ),
                  ),
                  Text(" 258888")
                ],
              ),
              Container(  
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    )
                  ),
                  child: Row(
                  children: <Widget>[
                    Text("Shopping", 
                      style: TextStyle(
                        color: Colors.indigo
                      ),
                    ),
                    Icon(Icons.arrow_right, size: 30, color: Colors.indigo,)
                  ],
                ),
                onPressed: (){},
                ),
              )
              
            ],
          ),
          bottom: PreferredSize(
            preferredSize: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Container(
                  width: 220,
                  child: TabBar(
                    indicatorColor: Colors.white,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 15
                    ),
                    labelStyle: TextStyle(
                      fontSize: 20
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          'Buy'
                        )
                      ),
                      Tab(child: Text(
                        'Sell'
                        )
                      ),
                      Tab(child: Text(
                        'Put'
                        )
                      )
                    ],
                    
                  ),
                ),
                Icon(Icons.more_horiz, color: Colors.white,)
              ],
            ),
          )
          
        ),
        body: TabBarView(
          children: <Widget> [
            Container(
              child: Buy(),
            ),
            Container(
              child: Sell() ,
            ),
            Container(
              child: Put(),
            )
          ]),
      ),
    );
  }
}

