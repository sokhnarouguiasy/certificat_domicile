// // ignore_for_file: use_build_context_synchronously

// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// //import 'package:google_fonts/google_fonts.dart';
// import 'package:mongo_dart/mongo_dart.dart';


// //import 'delayed_animation.dart';
// //import 'formulaire_page.dart';
// import 'main.dart';
// import 'package:mongo_dart/mongo_dart.dart' as mongo;

// // // ignore: use_key_in_widget_constructors
// // class LoginPage extends StatelessWidget {

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         elevation: 0,
// //         backgroundColor: Colors.white.withOpacity(0),
// //         leading: IconButton(
// //           icon:const Icon(
// //             Icons.close,
// //             color: Colors.black,
// //             size: 30,
// //           ), 
          
// //           onPressed: () {
// //             Navigator.pop(context);
// //           },
// //         ),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           children: [
// //             Container(
// //               margin: const EdgeInsets.symmetric(
// //                 vertical: 20,
// //                 horizontal: 30,
// //               ),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   DelayedAnimation(
// //                     delay: 1000, 
// //                     child: Text(
// //                       'Connexion ',
// //                       style: GoogleFonts.poppins(
// //                         color:const Color(0xffB3BFE3),
// //                         fontSize:25,
// //                         fontWeight:FontWeight.w600,
// //                       ),
// //                       )
// //                     ),
// //                   const SizedBox(height: 22,),
// //                   DelayedAnimation(
// //                     delay: 1500, 
// //                     child: Image.asset('images/senegal.png',height: 190,)
// //                     // Text(
// //                     //   'Connectez-vous avec votre adresse mail pour que nous puissons mieux proteger vos informations',
// //                     //   style: GoogleFonts.poppins(
// //                     //     color:Colors.grey[600],
// //                     //     fontSize:16,
// //                     //     fontWeight:FontWeight.w500,
// //                     //   ),
// //                     //   )
// //                     ),

// //                 ],
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             LoginPage(),
// //             const SizedBox(height: 30),
// //              DelayedAnimation(
// //               delay: 3000,
// //               child: ElevatedButton(
// //                 style: ElevatedButton.styleFrom(
// //                   shape: const StadiumBorder(),
// //                   backgroundColor:const Color(0xffB3BFE3) ,
// //                   padding: const EdgeInsets.symmetric(
// //                     horizontal: 125,
// //                     vertical: 13,
// //                   ),
// //                  ),
// //                 child: Text(
// //                   'CONEXION',
// //                   style: GoogleFonts.poppins(
// //                     color: Colors.white,
// //                     fontSize: 15,
// //                     fontWeight: FontWeight.w500,
// //                    ),
// //                 ),
// //                 onPressed: () {
// //                   Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                   builder: (context) => const MyApp(),
// //                  ),
// //                 );
// //                },
// //                ),
// //             ),
// //             const SizedBox(height: 10),
// //             DelayedAnimation(
// //               delay: 3500, 
// //               child:Row(
// //                 children: [
// //                   const Padding(padding: EdgeInsets.only(right: 50), 
// //                   ),
// //                   Text(
// //                     'Vous n\'avez pas de compte?',
// //                     style: GoogleFonts.poppins(
// //                           color: Colors.black,
// //                           fontSize: 15,
// //                           fontWeight: FontWeight.w600,
// //                     ),
// //                   ),
// //                   TextButton(
// //                     onPressed: (){
// //                       Navigator.push(context,MaterialPageRoute(builder: (context) => FormulairePage()));
// //                     },
// //                     child:   Text('S\'inscrire',style: GoogleFonts.poppins(
// //                           color: const Color(0xffB3BFE3),
// //                           fontSize: 20,
// //                           fontWeight: FontWeight.w600,
// //                     ),)
// //                     ),
// //                 ],
// //               )
// //               ),
// //             const SizedBox(height: 20),
// //           Align(
// //             alignment: Alignment.centerRight,
// //             child: Padding(
// //               padding: const EdgeInsets.only(right: 35),
// //               child: TextButton(
// //                 onPressed: () {
// //                   Navigator.pop(context);
// //                },
// //                 child: DelayedAnimation(
// //                   delay: 3500,
// //                   child: Text(
// //                     "ANNULER",
// //                     style: GoogleFonts.poppins(
// //                       color: Colors.black,
// //                       fontSize: 18,
// //                       fontWeight: FontWeight.w600,
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),

// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }





// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
  


//   final _formKey = GlobalKey<FormState>();
//   final _storage = const FlutterSecureStorage();
//   String _email = '';
//   String _password = '';
//   bool _obscureText = true;
//   bool _isLoading = false;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Connexion'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer votre email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   labelText: 'Mot de passe',
//                   suffixIcon: IconButton(
//                     icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
//                     onPressed: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer votre mot de passe';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _password = value!,
//               ),
//               ElevatedButton(
//                 onPressed: _isLoading ? null : () =>_submit(context),
//                 child: _isLoading ? const CircularProgressIndicator() : const Text('Connexion'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _submit(BuildContext context) async {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     _formKey.currentState!.save();

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final db = mongo.Db('mongodb://localhost:27017/my_database');
//       await db.open();

//       final users = db.collection('users');

//       final user = await users.findOne(where.eq('email', _email));

//       if (user == null || user['password'] != _password) {
//         throw Exception('Email ou mot de passe incorrect');
//       }

//       await _storage.write(key: 'email', value: _email);
//       await _storage.write(key: 'password', value: _password);

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const MyApp()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }
// }




// // // ignore: use_key_in_widget_constructors
// // class LoginForm extends StatefulWidget {
// //   @override
// //   // ignore: library_private_types_in_public_api
// //   _LoginFormState createState() => _LoginFormState();
// // }

// // class _LoginFormState extends State<LoginForm> {
  
// //   var _obscureText = true;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: const EdgeInsets.symmetric(
// //         horizontal: 30,
// //       ),
// //       child: Column(
// //         children: [
// //           DelayedAnimation(
// //             delay: 2500,
// //             child: TextField(
// //               decoration: InputDecoration(
// //                 labelText: 'Email',
// //                 labelStyle: TextStyle(
// //                   color: Colors.grey[400],
// //                 ),
// //               ),
// //             ),
// //           ),
// //           const SizedBox(height: 30),
// //           DelayedAnimation(
// //             delay: 2700,
// //             child: TextField(
// //               obscureText: _obscureText,
// //               decoration: InputDecoration(
// //                 labelStyle: TextStyle(
// //                   color: Colors.grey[400],
// //                 ),
// //                 labelText: 'Mot de passe',
// //                 suffixIcon: IconButton(
// //                   icon: const Icon(
// //                     Icons.visibility,
// //                     color: Colors.black,
// //                   ),
// //                   onPressed: () {
// //                     setState(() {
// //                       _obscureText = !_obscureText;
// //                     });
// //                   },
                 
// //                 ),
                
// //               ),
// //             ),
// //           ),
          
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:mongo_dart/mongo_dart.dart' as mongo;
// //import 'package:mongo_dart/mongo_dart.dart';
// import 'main.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _storage = const FlutterSecureStorage();
//   String _email = '';
//   String _password = '';
//   bool _obscureText = true;
//   bool _isLoading = false;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Connexion'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer votre email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   labelText: 'Mot de passe',
//                   suffixIcon: IconButton(
//                     icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
//                     onPressed: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Veuillez entrer votre mot de passe';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _password = value!,
//               ),
//               ElevatedButton(
//                 onPressed: _isLoading ? null : () =>_submit(context),
//                 child: _isLoading ? const CircularProgressIndicator() : const Text('Connexion'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _submit(BuildContext context) async {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     _formKey.currentState!.save();

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final db = mongo.Db('mongodb://localhost:27017/Domicile');
//       await db.open();

//       final users = db.collection('personnes');

//       final user = await users.findOne(where.eq('email', _email));

//       if (user == null || user['password'] != _password) {
//         throw Exception('Email ou mot de passe incorrect');
//       }

//       await _storage.write(key: 'email', value: _email);
//       await _storage.write(key: 'password', value: _password);

//       if (mounted) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const MyApp()),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
//     } finally {
//       if (mounted) {
//         setState(() {
//           _isLoading = false;
//         });
//       }
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _storage = const FlutterSecureStorage();
  String _email = '';
  String _password = '';
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre mot de passe';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              ElevatedButton(
                onPressed: _isLoading ? null : () => _submit(context),
                child: _isLoading ? const CircularProgressIndicator() : const Text('Connexion'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Vous pouvez utiliser `_email` et `_password` ici comme vous le souhaitez
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Email: $_email, Mot de passe: $_password')));
    }
  }
}

