import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delayed_animation.dart';
import 'main.dart';
import 'social_page.dart';


//import 'delayed_animation.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffB3BFE3), //0xFFEDECF2
      body: SingleChildScrollView(
        child:Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,  
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 200,
                  height: 100,
                  child: Image.asset('images/logoCertificat.png'),
                ),
                ),
              DelayedAnimation(
                delay: 2500,  
                // ignore: sized_box_for_whitespace
                child: Container(
                  height:400,
                  child: Image.asset('images/gf.png'),
                ),
                ),
              DelayedAnimation(
                delay: 3500,  
                // ignore: sized_box_for_whitespace
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  child:Text(
                    "Un certificat fiable à usage unique avec un QR code pour plus de sécurité",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 17, 17, 18),
                      fontSize:16,

                    ),
                    
                    ),
                ),
                ),
              DelayedAnimation(
                delay: 4500,  
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: d_red,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(13),

                    ),
                    child:const Text('GET STARTED',style: TextStyle(color:Color.fromARGB(255, 128, 156, 241) ),) ,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SocialPage()));
                    },
                    ),
                ),
                ),
            ],
          ),
        ),
        ),
    );
  }
}