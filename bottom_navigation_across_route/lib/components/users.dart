import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;


// List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

// String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Welcome {
//     Welcome({
//         this.userId,
//         this.id,
//         this.title,
//     });

//     int userId;
//     int id;
//     String title;

//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//     );

//     Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//     };
// }



class Users extends StatefulWidget {


  const Users({Key key}) :super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {

  getUserData() async{
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for(var u in jsonData){
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot){
              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text(
                      'Loading...'
                    ),
                  ),
                );
              }
              else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i){
                    return ListTile(
                      title: Text(snapshot.data[i].name),
                      subtitle: Text(snapshot.data[i].userName),
                      trailing: Text(snapshot.data[i].email),
                    );
                  });
              }
            }),
        ),
      )
 
    );
  }
}

class User {
  final String name, email, userName;
  User(
    this.name,
    this.email,
    this.userName
  );
}
