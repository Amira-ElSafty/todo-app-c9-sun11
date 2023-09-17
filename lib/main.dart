import 'package:flutter/material.dart';
import 'package:flutter_app_todo_c9_sun_11/home/home_screen.dart';
import 'package:flutter_app_todo_c9_sun_11/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
