import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'delayed_animation.dart';
import 'package:certificat_domicile/UserController.dart';

class FormulairePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String _prenom = '';
  String _nom = '';
  String _lieu_naissance = '';
  String _date_naissance = '';
  String _fonction = '';
  String _email = '';
  String _telephone = '';
  String _password = '';
  String _confirmation = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DelayedAnimation(
                    delay: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Prénom',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre prénom';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _prenom = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nom',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre nom';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _nom = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 750,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Lieu de naissance',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre lieu de naissance';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _lieu_naissance = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 1000,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Date de naissance',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre date de naissance';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _date_naissance = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 1250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Fonction',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre fonction';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _fonction = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 1500,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Téléphone',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre numéro de téléphone';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _telephone = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 1750,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre adresse email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 2000,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
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
                  ),
                  const SizedBox(height: 16),
                  DelayedAnimation(
                    delay: 2250,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirmation du mot de passe',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez confirmer votre mot de passe';
                        }
                        if (value != _password) {
                          return 'Les mots de passe ne correspondent pas';
                        }
                        return null;
                      },
                      // onSaved: (value) {
                      //   _confirmation = value!;
                      // },
                    ),
                  ),
                  const SizedBox(height: 20),
                  DelayedAnimation(
                    delay: 2500,
                    child: ElevatedButton(
                      onPressed: _isLoading ? null : () => _submit(context),
                      child: _isLoading
                          ? CircularProgressIndicator()
                          : Text(
                              'S\'inscrire',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Call signUp function to create the account
      final signUpResult = await UserController.signUp(
        _nom,
        _prenom,
        _lieu_naissance,
        _email,
        _password,
        _date_naissance,
        _fonction,
        _telephone,
      );

      if (signUpResult['statusCode'] == 200) {
        // Handle successful signup
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Inscription réussie'),
          ),
        );
      } else {
        // Handle signup failure
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de l\'inscription'),
          ),
        );
      }
    }
  }
}
