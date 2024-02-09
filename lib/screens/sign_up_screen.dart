import 'package:flutter/material.dart';
import 'package:us_scanner/screens/scan_screen.dart';

import '../wigets/text_form_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Center(
                  child: Text(
                'Sign up',
                style: TextStyle(fontSize: 20,),
              )),

              const MyFormTextField(title: 'name',),
              const MyFormTextField(title: 'Email',),
              const MyFormTextField(title: 'password',),
              const MyFormTextField(title: 'confirm\npassword',),
              ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const ScanScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Set the background color to black
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Set the border radius
                  ),
                ),
                child: const Text('Sign up'),
              )




            ],
          ),
        ),
      ),
    );
  }
}
