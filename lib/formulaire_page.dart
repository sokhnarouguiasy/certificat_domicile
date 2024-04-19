import 'package:certificat_domicile/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delayed_animation.dart';

// ignore: use_key_in_widget_constructors
class FormulairePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Prenom',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nom',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Lieu de naissance',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Date de naissance',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
           const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Fonction',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
           const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Telephone',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
           const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
           const SizedBox(height: 8),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Mot de passe',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
           const SizedBox(height: 10),
          DelayedAnimation(
                  delay: 2500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirmation du mot de passe',
                      labelStyle: TextStyle(
                        color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          DelayedAnimation(
              delay: 3000,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor:const Color(0xffB3BFE3) ,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 125,
                    vertical: 13,
                  ),
                 ),
                child: Text(
                  'Créer',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                   ),
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => LoginPage(),
                 ),
                );
               },
               ),
            ),

                // Container(
                //   decoration: BoxDecoration(
                //     color:Colors.deepPurple.withOpacity(.3)
                //   ),
                //   child: TextFormField(
                //     decoration: const InputDecoration(
                //       label: Text("Nom"),
                //     ),
                //   ),
                // ),
              ]
              ,),
          ),
        ),
      ),
    );
  }
}