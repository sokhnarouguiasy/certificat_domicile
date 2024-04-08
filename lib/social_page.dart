import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accueil_page.dart';
import 'contacts_page.dart';
import 'delayed_animation.dart';
import 'login_page.dart';



// ignore: use_key_in_widget_constructors
class SocialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back,
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
            DelayedAnimation(
              delay: 1000,
              // ignore: sized_box_for_whitespace
              child:Container(
                height: 280,
                child: Image.asset('images/10.jpg'),
              ) ),
              DelayedAnimation(
              delay: 2000,
              // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
              child:Container(
                //height: 300,
                child: Container(
                  margin:  const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                  child:  Column(
                    children:[
                      Text(
                        'Le changement commence ici',
                         style:GoogleFonts.poppins(
                          color: const Color(0xffB3BFE3),
                          fontSize:16,
                          fontWeight:FontWeight.w600,
                        ) ,
                         ),
                      const SizedBox(
                        height: 10,

                      ),
                       Text(
                        'Utiliser Sama domicile pour plus de sécurité',
                        textAlign: TextAlign.center,
                         style:GoogleFonts.poppins(
                          color:const Color(0xffB3BFE3) ,
                          fontSize:15,
                          fontWeight:FontWeight.w600,

                         ) ,
                         ),
                    ],
                    ),
                ),
              ) 
              ),
              DelayedAnimation(
                delay: 3500, 
                child: Container(
                margin:  const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AccueilPage()));
                        } , 
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor:const Color(0xffB3BFE3),
                          padding: const EdgeInsets.all(13),
                          ),
                          
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.home),
                            const SizedBox(width: 10,), 
                            Text(
                              'ACCUEIL',
                              style: GoogleFonts.poppins(
                                color:Colors.white,
                                fontSize:16,
                                fontWeight:FontWeight.w600
                              ),
                            
                            )
                          ],
                          )
                        ),
                      const SizedBox(height: 10,),
                       ElevatedButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactsPage()));
                        } , 
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor:const Color(0xFF576dff),
                          padding: const EdgeInsets.all(13),
                          ),
                          
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.contacts),
                            const SizedBox(width: 10,), 
                            Text(
                              'Nos Contacts',
                              style: GoogleFonts.poppins(
                                color:Colors.white,
                                fontSize:16,
                                fontWeight:FontWeight.w600
                              ),
                            )
                          ],
                          )
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                        onPressed:(){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        } , 
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(13),
                          ),
                          
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          
                             const Icon(Icons.mail),
                            const SizedBox(width: 10,), 
                            Text(
                              'CONNEXION',
                              style: GoogleFonts.poppins(
                                color:Colors.black,
                                fontSize:16,
                                fontWeight:FontWeight.w600
                              ),
                            
                            )
                          ],
                          )
                        )


                    ],),
                ))
          ],
          ),
      ),
    );
  }
}