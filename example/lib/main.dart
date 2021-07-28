import 'package:flutter/material.dart';
// import 'package:route_transitions/route_transitions.dart';

void main() => runApp(MyApp());

const TextStyle style = TextStyle(fontSize: 22, color: Colors.white);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route transitions',
      theme: ThemeData.dark(),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
