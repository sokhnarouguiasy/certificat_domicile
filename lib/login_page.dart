import 'package:certificat_domicile/UserController.dart';
import 'package:certificat_domicile/formulaire_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
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
    //var _obscureText = true;
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
              Image.asset('images/senegal.png'),  
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
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context)=>  FormulairePage(),
                      )
                    );
                },
                child: Text(
                  'S\'inscrire',
                  style: GoogleFonts.poppins(
                    color : const Color(0xffB3BFE3),
                    fontSize : 20,
                    fontWeight : FontWeight.w600,
                  )
                )
               
                )

            ],
          ),
        ),
      ),
    );
  }

 Future<void> _submit(BuildContext context) async {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email: $_email, Mot de passe: $_password')));
    final Map<String, dynamic> signInData =
        await UserController.signIn(_email, _password);
    final int statusCode = signInData['statusCode'];
    if (statusCode == 200) {
      final List<dynamic> rolesDynamic = signInData['roles'];
      final List<String> roles = rolesDynamic.map((role) => role.toString()).toList();
      if (roles.contains('habitant')) {
        Navigator.pushReplacementNamed(context, '/habitant');
        //print('Redirection vers la page habitant après une connexion réussie');
      } else if (roles.contains('maire')) {
        Navigator.pushReplacementNamed(context, '/maire');
      } else if (roles.contains('delegue')) {
        Navigator.pushReplacementNamed(context, '/delegue');
      } else if (roles.contains('admin')) {
        Navigator.pushReplacementNamed(context, '/admin');
      }
    } else if (statusCode == 401) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email ou mot de passe incorrect')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Erreur de connexion. Code d\'état HTTP: $statusCode')));
    }
  }
}

  }


