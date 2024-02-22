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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(
                      child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20,color: Colors.black),
                  )),
                   SizedBox(height: 25,),
              
                   const MyFormTextField(title: 'name',),
                  SizedBox(height: 25,),
              
                  const MyFormTextField(title: 'Email',),
                  SizedBox(height: 25,),
              
                  const MyFormTextField(title: 'password',),
                  SizedBox(height: 25,),
              
                  const MyFormTextField(title: 'confirm\npassword',),
                  SizedBox(height: 25,),
              
              
                  ElevatedButton(
                    onPressed: () {
                      // Add your button click logic here
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const ScanScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Set the background color to black
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Set the border radius
                      ),
                    ),
                    child: const Text('Sign up',style: TextStyle(color: Color(0xffff6c22)),),
                  )
              
              
              
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
