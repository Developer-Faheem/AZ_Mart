import 'package:azmart/auth/resetPassword.dart';
import 'package:azmart/auth/signup.dart';
import 'package:azmart/components/common_button.dart';
import 'package:azmart/components/common_textfield.dart';
import 'package:azmart/frontend/bottomNav/bottomNavPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constant.dart';
import '../components/common_Route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Welcome Back !",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(AppSvg.keySvg),
            const SizedBox(height: 30),
            TextFieldConst(
                keytype: TextInputType.emailAddress,
                geticon: Icons.email_outlined,
                label: "Email"),
            TextFieldwithPassConst(geticon: Icons.key, label: "Password"),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      pageRoute(context, const ResetPasswordPage());
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.poppins(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              onTap: () {
                pageRoute(context, const BottomNavigationPage());
              },
              innerText: "Login",
              phori: 40,
              pverti: 10,
              contHeight: 50,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
            const SizedBox(height: 18),
            InkWell(
              onTap: (){
                pageRoute(context, const SignUpPage());
              },
              child: Text(
                "Create an Account",
                style: GoogleFonts.poppins(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
