import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey),
      ),
      home: MairePage(),
    );
  }
}

class MairePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          color: Colors.blue[900], // Couleur bleu foncé pour l'appBar
          child: Center(
            child: Text(
              '', // Titre "HABITANT"
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container( // Rectangle "HABITANT"
              color: Colors.blue[900],
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: Text(
                  'HABITANT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Accueil'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Demande d\'inscription'),
              leading: Icon(Icons.person_add),
              onTap: () {},
            ),
            ListTile(
              title: Text('Demande de certificat'),
              leading: Icon(Icons.assignment),
              onTap: () {},
            ),
            ListTile(
              title: Text('Liste des demandes de certificat'),
              leading: Icon(Icons.list_alt),
              onTap: () {},
            ),
            ListTile(
              title: Text('Liste des demandes d\'inscription'),
              leading: Icon(Icons.playlist_add_check),
              onTap: () {},
            ),
            ListTile(
              title: Text('Mes résidences'),
              leading: Icon(Icons.home_work),
              onTap: () {},
            ),
             Divider(), // Ajout d'une ligne de séparation
            ListTile(
              title: Text('Déconnexion'),
              leading: Icon(Icons.logout),
              onTap: () {
                // Logique de déconnexion ici
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Bienvenue sur le Dashboard !',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

