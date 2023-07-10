import 'package:azmart/auth/login.dart';
import 'package:azmart/auth/otp.dart';
import 'package:azmart/components/common_Route.dart';
import 'package:azmart/components/common_button.dart';
import 'package:azmart/components/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constant.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              "Create Account !",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            SvgPicture.asset(AppSvg.cartSvg, height: 100),
            const SizedBox(height: 30),
            TextFieldConst(geticon: Icons.person_outline, label: "Name"),
            TextFieldConst(
                keytype: TextInputType.emailAddress,
                geticon: Icons.email_outlined,
                label: "Email"),
            TextFieldwithPassConst(geticon: Icons.key, label: "Password"),
            TextFieldConst(geticon: Icons.home_outlined, label: "Address"),
            TextFieldConst(geticon: Icons.call_outlined, label: "Phone Number"),
            const SizedBox(height: 30),
            PrimaryButton(
              onTap: () {
                pageRoute(context, const OTPPage());
              },
              innerText: "Sign Up",
              phori: 40,
              pverti: 10,
              contHeight: 50,
              getcolor: AppColors.primaryColor,
              textColor: AppColors.bgWhiteColor,
            ),
            const SizedBox(height: 18),
            InkWell(
              onTap: () {
                pageRoute(context, const LoginPage());
              },
              child: Text(
                "Login",
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
