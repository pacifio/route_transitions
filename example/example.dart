import 'package:flutter/material.dart';
import 'package:route_transitions/route_transitions.dart';

void main() => runApp(MyApp());

const TextStyle style =
    TextStyle(fontFamily: "Poppins", fontSize: 22, color: Colors.black);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 8.0,
        title: Text(
          "Route animations",
          style: style,
        ),
        brightness: Brightness.light,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Slide from right",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.SLIDE_RIGHT,
                    builder: (context) => DashBoard()));
              },
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Slide from left",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.SLIDE_LEFT,
                    builder: (context) => DashBoard()));
              },
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Slide from up",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.SLIDE_UP,
                    builder: (context) => DashBoard()));
              },
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Slide from down",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.SLIDE_DOWN,
                    builder: (context) => DashBoard()));
              },
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Fade",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.FADE,
                    builder: (context) => DashBoard()));
              },
            ),
            RaisedButton(
              elevation: 0.0,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Scale",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.SACLE,
                    builder: (context) => DashBoard()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          "Dashboard",
          style: style,
        ),
        backgroundColor: Colors.white,
        elevation: 8.0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Text(
          "Dashboard",
          style: style,
        ),
      ),
    );
  }
}
