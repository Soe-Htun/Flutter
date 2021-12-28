import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  getUserFromJson() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u['id'], u['name'], u['username'], u['email']);
      users.add(user);
      print(user.name);
    }
    print(users.length);
    log('Data: $users');
    return users;
  }

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.all(5),
    //   child: Row(
    //     children: <Widget>[
    //       Expanded(
    //         child: Card(
    //           elevation: 10,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10)),
    //           child: DataTable(
    //             sortColumnIndex: 0,
    //             sortAscending: true,
    //             columns: [
    //               DataColumn(label: Text("Name")),
    //               DataColumn(label: Text("Address")),
    //               DataColumn(label: Text("Year"), numeric: true)
    //             ],
    //             rows: [
    //               DataRow(cells: [
    //                 DataCell(Text("Dash")),
    //                 DataCell(Text("Spain")),
    //                 DataCell(Text("2018"))
    //               ]),
    //               DataRow(cells: [
    //                 DataCell(Text("Gopher")),
    //                 DataCell(Text("England")),
    //                 DataCell(Text("2019"))
    //               ])
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Card(
      child: FutureBuilder(
        future: getUserFromJson(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: Text("Loading..."),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, i) {
              return SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(label: Text("Id")),
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("UserName")),
                    DataColumn(label: Text("Email")),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text(snapshot.data[i].id)),
                      DataCell(Text(snapshot.data[i].name)),
                      DataCell(Text(snapshot.data[i].username)),
                      DataCell(Text(snapshot.data[i].email))
                    ])
                  ],
                ),
              );
            });
          }
        },
      ),
    );
  }
}

class User {
  final String id, name, username, email;
  User(this.id, this.name, this.username, this.email);
}
