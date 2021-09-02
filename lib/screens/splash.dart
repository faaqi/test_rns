import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_rns/AllProviders/breweries_provider.dart';
import 'package:test_rns/screens/home_screen.dart';
import 'package:sizer/sizer.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                    child: HomeScreen(),
                    create: (_) => BreweriesProvider(),
                  )));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 100.w,
        height: 100.h,
        child: Center(
            child: Text(
          'Breweries',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.w,
          ),
        )),
      ),
    );
  }
}
