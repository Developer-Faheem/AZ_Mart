import 'package:azmart/app_constant.dart';
import 'package:flutter/material.dart';
import 'frontend/splash/splashScreen.dart';

void main() {
  runApp(const AZMart());
}

class AZMart extends StatelessWidget {
  const AZMart({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.bgWhiteColor,        
      ),
      debugShowCheckedModeBanner: false,
      home: const  SplashScreen(),
    );
  }
}



