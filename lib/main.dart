import 'package:certificat_domicile/accueil_page.dart';
import 'package:certificat_domicile/admin.dart';
import 'package:certificat_domicile/delegue.dart';
import 'package:certificat_domicile/formulaire_page.dart';
import 'package:certificat_domicile/habitant.dart';
import 'package:certificat_domicile/login_page.dart';
import 'package:certificat_domicile/maire.dart';
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
    return  MaterialApp(
      title: 'Sama Domicile',
      debugShowCheckedModeBanner: false,
      home: BienvenuePage(),
      initialRoute: '/',
      routes: {
        //'/': (context) => AccueilPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => FormulairePage(),
        '/habitant': (context) => HabitantPage(),
        '/delegue':(context) => DeleguePage(),
        '/maire':(context) => MairePage(),
        '/admin':(context) => AdminPage(),
      },
    );
  }
}
