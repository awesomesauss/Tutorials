import 'package:flutter/material.dart';
import 'package:flutter_application_1/artpage1.dart';
import 'package:flutter_application_1/artpage2.dart';
import 'package:flutter_application_1/playiconbutton.dart';

void main() {
  runApp(MaterialApp(
    home:Playiconbutton(),
    routes:{
    '/homescreen': (context) => Playiconbutton(),
    '/artpage1': (context) => Artpage1(),
    '/artpage2': (context) => Artpage2()
    }
  ));
}
