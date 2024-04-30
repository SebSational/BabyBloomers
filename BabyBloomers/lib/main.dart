import 'package:flutter/material.dart';
import 'package:budgetmaster/screens/login_screen.dart';


void main() async {

  runApp(const Login());

}

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BabyBloomers',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),

        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFC400),
          centerTitle: true,

        ),
         body: const LoginScreen(),
      ),
    );
  }
}
