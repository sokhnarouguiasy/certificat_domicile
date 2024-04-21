// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dashboard',
//       theme: ThemeData(
//         primaryColor: Colors.blue[900],
//         colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.grey),
//       ),
//       home: DeleguePage(),
//     );
//   }
// }

// class DeleguePage extends StatefulWidget {
//   @override
//   _DeleguePage createState() => _DeleguePage();
// }

// class _DeleguePage extends State<DeleguePage> {
//   bool isDropdownOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//           color: Colors.blue[900],
//           child: Center(
//             child: Text(
//               'HABITANT',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//           ),
//         ),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             Container(
//               color: Colors.blue[900],
//               padding: EdgeInsets.symmetric(vertical: 16),
//               child: Center(
//                 child: Text(
//                   'HABITANT',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Accueil'),
//               leading: Icon(Icons.home),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Demande d\'inscription'),
//               leading: Icon(Icons.person_add),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Demande de certificat'),
//               leading: Icon(Icons.assignment),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Liste des demandes de certificat'),
//               leading: Icon(Icons.list_alt),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Liste des demandes d\'inscription'),
//               leading: Icon(Icons.playlist_add_check),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Mes résidences'),
//               leading: Icon(Icons.home_work),
//               onTap: () {},
//             ),
//             Divider(),
//             Container(
//               color: Colors.blue[900],
//               padding: EdgeInsets.symmetric(vertical: 16),
//               child: Center(
//                 child: Text(
//                   'MENU DELEGUE',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Lister Les Demandes'),
//               leading: Icon(Icons.list),
//               onTap: () {
//                 setState(() {
//                   isDropdownOpen = !isDropdownOpen;
//                 });
//               },
//             ),
//             if (isDropdownOpen)
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ListTile(
//                       title: Text('Demandes De Certificats'),
//                       onTap: () {
//                         // Ajouter la logique pour rediriger vers la page correspondante
//                       },
//                     ),
//                     ListTile(
//                       title: Text('Demandes D\'inscriptions'),
//                       onTap: () {
//                         // Ajouter la logique pour rediriger vers la page correspondante
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ListTile(
//               title: Text('Habitants'),
//               leading: Icon(Icons.people),
//               onTap: () {},
//             ),
//             ListTile(
//               title: Text('Fournir un Certificat'),
//               leading: Icon(Icons.assignment_turned_in),
//               onTap: () {},
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Déconnexion'),
//               leading: Icon(Icons.logout),
//               onTap: () {
//                 // Logique de déconnexion ici
//               },
//             )
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Bienvenue sur le Dashboard !',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }
// }
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
      home: DeleguePage(),
    );
  }
}

class DeleguePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900], // Couleur de fond de l'en-tête en bleu foncé
              ),
              child: Text(
                'MENU MAIRE & HABITANT',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white, // Couleur du texte en blanc
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house, color: Colors.blue[900]), // Icône de maison en bleu foncé
              title: Text(
                'Quartier',
                style: TextStyle(color: Colors.black), // Couleur du texte en noir
              ),
              onTap: () {
                // Action lorsque l'élément est cliqué
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue[900]), // Icône de personne en bleu foncé
              title: Text(
                'Délégué',
                style: TextStyle(color: Colors.black), // Couleur du texte en noir
              ),
              onTap: () {
                // Action lorsque l'élément est cliqué
              },
            ),
            Divider(), // Séparateur
            ListTile(
              title: Text(
                'HABITANT',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue[900], // Couleur du texte en bleu foncé
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house, color: Colors.blue[900]), // Icône de maison en bleu foncé
              title: Text(
                'Mon quartier',
                style: TextStyle(color: Colors.black), // Couleur du texte en noir
              ),
              onTap: () {
                // Action lorsque l'élément est cliqué
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue[900]), // Icône de personne en bleu foncé
              title: Text(
                'Mon profil',
                style: TextStyle(color: Colors.black), // Couleur du texte en noir
              ),
              onTap: () {
                // Action lorsque l'élément est cliqué
              },
            ),
            Divider(), // Ligne de séparation
            ListTile(
              title: Text(
                'Paramètres',
                style: TextStyle(color: Colors.black), // Couleur du texte en noir
              ),
              onTap: () {
                // Action lorsque l'élément est cliqué
              },
            ),
          ],
        ),
      ),
    );
  }
}

