import 'package:azmart/auth/login.dart';
import 'package:azmart/components/common_Route.dart';
import 'package:azmart/components/common_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app_constant.dart';
import '../../auth/signup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              "Welcome to AZ Mart",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 80),
            Image.asset(AppImages.introIcon),
            const SizedBox(height: 80),
            PrimaryButton(
              onTap: () {
                pageRoute(context, const LoginPage());
              },
              innerText: "Login",
              phori: 40,
              pverti: 10,
              contHeight: 50,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
            PrimaryButton(
              onTap: () {
                pageRoute(context, const SignUpPage());
              },
              innerText: "Sign Up",
              phori: 40,
              pverti: 10,
              contHeight: 50,
              getcolor: Colors.transparent,
              textColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
