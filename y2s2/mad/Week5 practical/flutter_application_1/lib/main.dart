import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/secondpage.dart';
import 'package:flutter_application_1/thirdscreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScreen(),
      routes: {
        '/homepage': (context) => const HomeScreen(),
        '/secondpage': (context) => const SecondScreen(),
        '/thirdpage': (context) => const ThirdScreen(),
      },
    ),
  );
}