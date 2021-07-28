import 'package:flutter/material.dart';

/// Push a new widget , uses Navigator.push method
void pushWidget(
    {required Widget newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => newPage));
}

/// Push a named route , uses Navigator.push method
void pushNamed(
    {required String newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).pushNamed(newPage);
}

/// Push a widget while removing all previous routes
void pushWidgetWhileRemove(
    {required Widget newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => newPage), (route) => false);
}

/// Push a named route while removing all previous routes
void pushNamedWhileRemove(
    {required String newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  Navigator.of(context).pushNamedAndRemoveUntil(newPage, (route) => false);
}

/// Push a widget and await for data returned from `Navigator.pop()`
Future<dynamic> pushWidgetAwait(
    {required Widget newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) async {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  return Future.value(await Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => newPage)));
}

/// Push a named route and await for data returned from `Navigator.pop()`
Future<dynamic> pushNamedAwait(
    {required String newPage,
    required BuildContext context,
    bool pushBackPrevPage = false}) async {
  if (pushBackPrevPage) {
    Navigator.of(context).pop();
  }
  return Future.value(await Navigator.of(context).pushNamed(newPage));
}

/// Replcae with a new widget , uses `Navigator.pushReplacement()` method
void replaceWidget({required Widget newPage, required BuildContext context}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newPage));
}

/// Replcae with a named route , uses `Navigator.pushReplacement()` method
void replaceNamed({required String newPage, required BuildContext context}) {
  Navigator.of(context).pushReplacementNamed(newPage);
}

/// Custom page animation with fade transition
Future fadeWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = 0.0;
      var end = 1.0;
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Custom page animation with new page sliding in from right side
Future slideRightWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset(0.0, 0.0);
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Custom page animation with new page sliding in from lef side
Future slideLeftWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1.0, 0.0);
      var end = Offset(0.0, 0.0);
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Custom page animation with new page sliding up
Future slideUpWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset(0.0, 0.0);
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Custom page animation with new page sliding down
Future slideDownWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, -1.0);
      var end = Offset(0.0, 0.0);
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Custom page animation with new page sliding down
Future scaleWidget({
  required Widget newPage,
  required BuildContext context,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = 0.0;
      var end = 1.0;
      var curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return ScaleTransition(
        scale: animation.drive(tween),
        child: child,
      );
    },
  ));
}

/// Create a custom animation with [transitionBuilder] parameter
///
/// Here is an example of Scale Transition
/// ```
/// (context, animation, secondaryAnimation, child) {
///   var begin = 0.0;
///   var end = 1.0;
///   var curve = Curves.easeIn;
///   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
///   return ScaleTransition(
///     scale: animation.drive(tween),
///     child: child,
///   );
/// }
/// ```
Future customAnimationWidget({
  required Widget newPage,
  required BuildContext context,
  required Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )
      transitionBuilder,
  bool opaque = true,
}) {
  return Navigator.of(context).push(PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, animation, secondaryAnimation) {
      return newPage;
    },
    transitionsBuilder: transitionBuilder,
  ));
}

/// Pop widget from navigation tree
void pop(BuildContext context) {
  Navigator.of(context).pop();
}
