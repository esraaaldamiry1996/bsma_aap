import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق بصمة ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: Welcome_screen(),
    );
  }
}

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  bool _isVisible = false;
  bool _isButtonVisible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        _isButtonVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
            colors: [
              Color.fromARGB(255, 192, 226, 246),
              Color.fromARGB(255, 208, 246, 227),
              Color.fromARGB(255, 201, 241, 199),
              Color.fromARGB(255, 245, 238, 201),
            ],
            stops: [0.0, 0.18, 0.65, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 2),
              curve: Curves.elasticOut,
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value,
                  alignment: Alignment.center,
                  
                    
                  child: child,
                );
              },

              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'لكل طفل حكاية ',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 124, 194, 241),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            AnimatedOpacity(
              opacity: _isButtonVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 250,
                  height: 75,

                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.centerLeft,
                      end: AlignmentGeometry.centerRight,
                      colors: [Color(0xFF70A5A5), Color(0xFF7CB174)],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'تسجيل الدخول ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
