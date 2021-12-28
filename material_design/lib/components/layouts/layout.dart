import 'package:flutter/material.dart';
import 'package:material_design/components/drawer/MainDrawer.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      drawer: MainDrawer(),
      body: Container(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            tooltip: 'Going Up',
            child: Icon(Icons.call_missed),
          ),
        ),
      ),
    );
  }
}