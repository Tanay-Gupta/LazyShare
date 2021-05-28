import 'package:flutter/material.dart';
import 'package:lazyshare/screens/home_page.dart';
import 'package:lazyshare/screens/settings.dart';
import 'package:flutter/services.dart';
import 'package:lazyshare/screens/splashscreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "/homepage": (context) => HomePage(),
          "/settings": (context) => Settings(),
        });
  }
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MyApp());
}
