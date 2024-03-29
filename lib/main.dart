import 'package:flutter/material.dart';
import 'package:us_scanner/screens/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:  const TextTheme(
          bodyLarge: TextStyle( color: Color(0xffff6c22),),
          bodyMedium: TextStyle(color: Color(0xffff6c22),),
        ),
        scaffoldBackgroundColor: Colors.black45,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
