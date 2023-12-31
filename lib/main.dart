import 'package:flutter/material.dart';
import 'package:frgaa_app/bottom_nav_bar/bottom_navigation_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: const BottomNavAppBar(),
    );
  }
}

