import 'package:flutter/material.dart';
import 'package:lazyshare/screens/home_page.dart';
import 'package:lazyshare/screens/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lazy Share",
      // home: HomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/settings": (context) => Settings(),
      },
    );
  }
}
