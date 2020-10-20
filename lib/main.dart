import 'package:counter_app/views/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Counter',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Counter(),
    ),
  ));
}
