import 'package:certificat_domicile/login_page.dart';
import 'package:flutter/material.dart';


class BienvenuePage extends StatelessWidget {
  const BienvenuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/10.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(0.5), // Couleur noire avec une opacité de 50%
             //blendMode: BlendMode.darken, // Mode de fusion pour assombrir l'image
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("images/unnamed.jpg"),
                      radius: 60,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Bienvenue sur notre application",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Un certificat fiable à usage unique avec un QR code pour plus de sécurité",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "COMMENCER",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 115, 149, 229),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}