import 'package:flutter/material.dart';
import 'package:route_transitions/route_transitions.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Route transitions"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => pushWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Push page"),
            ),
            ElevatedButton(
              onPressed: () => fadeWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Fade in"),
            ),
            ElevatedButton(
              onPressed: () => slideRightWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Slide from right"),
            ),
            ElevatedButton(
              onPressed: () => slideLeftWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Slide from left"),
            ),
            ElevatedButton(
              onPressed: () => slideUpWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Slide from up"),
            ),
            ElevatedButton(
              onPressed: () => slideDownWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Slide from down"),
            ),
            ElevatedButton(
              onPressed: () => scaleWidget(
                newPage: Dashboard(),
                context: context,
              ),
              child: Text("Scale page"),
            ),
            ElevatedButton(
              onPressed: () => customAnimationWidget(
                newPage: Dashboard(),
                context: context,
                transitionBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var begin = 0.0;
                  var end = 1.0;
                  var curve = Curves.easeIn;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  return ScaleTransition(
                    scale: animation.drive(tween),
                    child: child,
                  );
                },
              ),
              child: Text("Custom animation"),
            ),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => pop(context),
          child: Text("Go back !"),
        ),
      ),
    );
  }
}
