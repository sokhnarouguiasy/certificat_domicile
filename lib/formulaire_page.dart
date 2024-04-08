import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FormulairePage extends StatelessWidget {

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
      
    );
  }
}