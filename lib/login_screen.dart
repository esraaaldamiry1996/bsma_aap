import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
            width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 192, 226, 246),
              Color.fromARGB(255, 208, 246, 227),
              Color.fromARGB(255, 201, 241, 199),
              Color.fromARGB(255, 245, 238, 201),
            ],
            stops: [0.0, 0.18, 0.65, 1.0],
          ),
        ),   
        child: Container(
          
        ),

       ),




    );
  }
}