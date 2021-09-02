import 'package:flutter/material.dart';
import 'package:test_rns/screens/home_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:test_rns/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Test RNS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
