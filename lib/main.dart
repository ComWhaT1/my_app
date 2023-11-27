import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // brightness: Brightness.dark,
          
      ),
      title: "My Home",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main"),
        ),
        body: Text("HELLO"),
      ),
      debugShowCheckedModeBanner: false,


    ),
  );
}
