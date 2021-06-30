import 'package:flutter/material.dart';
import 'package:route_transitions/route_transitions.dart';

void main() => runApp(MyApp());

const TextStyle style = TextStyle(fontSize: 22, color: Colors.white);

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
        backgroundColor: Colors.blue,
        elevation: 8.0,
        title: Text(
          "Route animations",
          style: style,
        ),
        brightness: Brightness.dark,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Slide from right",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_right,
                    builder: (context) => DashBoard()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Slide from left",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_left,
                    builder: (context) => DashBoard()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Slide from up",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_up,
                    builder: (context) => DashBoard()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Slide from down",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.slide_down,
                    builder: (context) => DashBoard()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Fade",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.fade,
                    builder: (context) => DashBoard()));
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Scale",
                  style: style.copyWith(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.scale,
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
        brightness: Brightness.dark,
        title: Text(
          "Dashboard",
          style: style,
        ),
        backgroundColor: Colors.blue,
        elevation: 8.0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
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
