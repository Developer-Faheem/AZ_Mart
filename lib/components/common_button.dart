// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  String innerText;
  double phori;
  double pverti;
  double contHeight;
  Color getcolor;
  Color textColor;
  void Function()? onTap;
  PrimaryButton({
    required this.innerText,
    required this.phori,
    required this.pverti,
    required this.contHeight,
    required this.getcolor,
    required this.textColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: phori, vertical: pverti),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: contHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: getcolor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              innerText,
              style: GoogleFonts.poppins(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
