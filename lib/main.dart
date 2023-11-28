import 'package:flutter/material.dart';
import 'package:my_app/counter_area.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // brightness: Brightness.dark,         
      ),
      title: "My Home",
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: CounterArea(),
    );
  }
}
