import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class UserController {
  static const String baseUrl = 'http://127.0.0.1:3000/api';

  static Future<Map<String, dynamic>> signIn(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/personne/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic>? data = jsonDecode(response.body);
      final token = data?['token'];
      final user = data?['user'];

      if (token != null && user != null) {
        print('Connexion réussie');
        final prefs = await getPrefs();
        await prefs.setString('token', token);
        final roles = user['roles']; // Récupération des rôles de l'utilisateur
        return {'statusCode': 200, 'roles': roles};
      } else {
        print('Les données de connexion sont null');
        return {'statusCode': 500};
      }
    } else if (response.statusCode == 401) {
      print('Email ou mot de passe incorrect');
      return {'statusCode': 401};
    } else {
      print("Erreur lors de la connexion: ${response.statusCode}");
      return {'statusCode': response.statusCode};
    }
  }

  static Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  static Future signUp(String nom, String prenom, String lieunaissance, String email, String password, String datenaissance, String fonction, String telephone) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/personne/ajouter'),
        body: {
          'nom': nom,
          'prenom': prenom,
          'lieunaissance': lieunaissance,
          'email': email,
          'password': password,
          'datenaissance': datenaissance,
          'fonction': fonction,
        },
      );

      if (response.statusCode == 200) {
        print('Inscription réussie');
        final Map<String, dynamic> data = jsonDecode(response.body);
        return data['message'];
      } else {
        print('Erreur lors de l\'inscription: ${response.statusCode}');
        final Map<String, dynamic> data = jsonDecode(response.body);
        return data['message'];
      }
    } catch (e) {
      return ('erreur'); // Return a 500 status code for generic error
    }
  }
}
