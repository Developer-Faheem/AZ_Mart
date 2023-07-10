import 'package:azmart/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderCompletePage extends StatefulWidget {
  const OrderCompletePage({super.key});

  @override
  State<OrderCompletePage> createState() => _OrderCompletePageState();
}

class _OrderCompletePageState extends State<OrderCompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Order Placed !",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primaryColor,
              child: Center(
                child: Icon(
                  Icons.check,
                  color: AppColors.bgWhiteColor,
                  size: 50,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Congratulations.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 26,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
