import 'dart:async';

import 'package:azmart/app_constant.dart';
import 'package:azmart/frontend/welcome/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer( const Duration(seconds: 3) , () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const WelcomeScreen()),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Image.asset(AppImages.mainIcon, height: 100)),
      ),
    );
  }
}