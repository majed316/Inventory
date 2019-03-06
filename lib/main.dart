//TOD LIST
// 1- seperate every class in its own file
// 2- create database class with all operations (Select, Insert, Update, Delete)
// 3- create 


import 'package:flutter/material.dart';
import 'item_list.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Inventory',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Inventory Beta 0.01'),
            ),
            body: List())
            );
  }
}