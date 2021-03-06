import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'screen/new_home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1D2028),
        accentColor: Color(0xFF2F3541),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NewHomeScreen(),
    );
  }
}
