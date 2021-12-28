import 'package:flutter/material.dart';
import 'package:employee_details/product-api.dart';
import 'package:employee_details/product.dart';
class HomePage extends StatelessWidget {
const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Employees details'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchProducts(),
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, index) {
                  
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}