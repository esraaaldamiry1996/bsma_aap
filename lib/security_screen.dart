import 'package:flutter/material.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => SecurityState();
}

class SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    const backgroundGradient =  LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFE9FCFC),
        Color(0xFFCAFBEA),
        Color(0xFFD6FADE),
        Color(0xFFFFFAED),
      ],
      stops: [0.0, 0.18, 0.65, 1.0],
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/app_logo.jpg', 
                    height: 60,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const SizedBox(height: 60),
                  ),
                ),
                const SizedBox(height: 24),

                Expanded(
                  child: Card(
                    elevation: 12,
                    shadowColor: Colors.black26,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                      
                        children: [
                    
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 16),
                                  Image.asset(
                                    'assets/images/shield_icon.jpg', 
                                    height: 100,
                                    fit: BoxFit.contain,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const SizedBox(height: 100),
                                  ),
                                  const SizedBox(height: 32),
                                  const Text(
                                    'إعدادات الوالدين',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Color(
                                        0xFF1A237E,
                                      ), 
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'هذه الصفحة مخصصة للبالغين فقط. للمتابعة، اضغط مطولاً على الزر أدناه.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF666666),
                                      height: 1.5,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 48),

                                  GestureDetector(
                                    onLongPress: () {
                                    
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFA5D6A7), // أزرق فاتح
                                            Color(0xFF26A69A), // أخضر مائي
                                          ],
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      alignment: Alignment.center,
                                      child: const Text(
                                        'اضغط مطولاً للمتابعة',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'إضغط لمدة ثانيتين',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF999999),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        
                          Align(
                            alignment: Alignment
                                .bottomLeft, 
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                  context,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    38,
                                    166,
                                    154,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), 
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      38,
                                      166,
                                      154,
                                    ), 
                                    width: 2.0, 
                                  ),
                                ),
                                child: const Text(
                                  'رجوع',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(
                                      255,
                                      240,
                                      232,
                                      232,
                                    ), 
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
