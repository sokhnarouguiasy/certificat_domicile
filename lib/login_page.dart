import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delayed_animation.dart';
import 'formulaire_page.dart';
import 'main.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon:const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ), 
          
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1000, 
                    child: Text(
                      'Connexion ',
                      style: GoogleFonts.poppins(
                        color:const Color(0xffB3BFE3),
                        fontSize:25,
                        fontWeight:FontWeight.w600,
                      ),
                      )
                    ),
                  const SizedBox(height: 22,),
                  DelayedAnimation(
                    delay: 1500, 
                    child: Image.asset('images/senegal.png',height: 190,)
                    // Text(
                    //   'Connectez-vous avec votre adresse mail pour que nous puissons mieux proteger vos informations',
                    //   style: GoogleFonts.poppins(
                    //     color:Colors.grey[600],
                    //     fontSize:16,
                    //     fontWeight:FontWeight.w500,
                    //   ),
                    //   )
                    ),

                ],
              ),
            ),
            const SizedBox(height: 10),
            LoginForm(),
            const SizedBox(height: 30),
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
                  'CONEXION',
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
                  builder: (context) => const MyApp(),
                 ),
                );
               },
               ),
            ),
            const SizedBox(height: 10),
            DelayedAnimation(
              delay: 3500, 
              child:Row(
                children: [
                  const Padding(padding: EdgeInsets.only(right: 50), 
                  ),
                  Text(
                    'Vous n\'avez pas de compte?',
                    style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => FormulairePage()));
                    },
                    child:   Text('S\'inscrire',style: GoogleFonts.poppins(
                          color: const Color(0xffB3BFE3),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                    ),)
                    ),
                ],
              )
              ),
            const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
               },
                child: DelayedAnimation(
                  delay: 3500,
                  child: Text(
                    "ANNULER",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),

          ],
        ),
      ),
    );
  }
}


// ignore: use_key_in_widget_constructors
class LoginForm extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
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
          const SizedBox(height: 30),
          DelayedAnimation(
            delay: 2700,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                labelText: 'Mot de passe',
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
