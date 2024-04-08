import 'package:flutter/material.dart';

import 'welcome_page.dart';
//import 'delayed_animation.dart';


// ignore: constant_identifier_names
const d_red=Colors.white;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Sama Domicile',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
