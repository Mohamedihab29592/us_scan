import 'dart:async';

import 'package:flutter/material.dart';
import 'package:us_scanner/screens/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int counter = 3; // Set the duration in seconds
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter > 0) {
        setState(() {
          counter--;
        });
      } else {
        _timer.cancel();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignUpScreen()),
        );
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
                  height: 150,
                  child: Image.asset(
                    "assets/images/onboarding_image.png",
                  ))),
          const Text('Universal Scanner',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
