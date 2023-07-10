// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors

import 'package:azmart/components/common_Route.dart';
import 'package:azmart/frontend/screens/home/productsDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_constant.dart';

class HomeProductConst extends StatelessWidget {
  String? image;
  String? name;
  String? price;
  String? date;
  bool showFavourite;
  HomeProductConst({
    required this.image,
    required this.name,
    required this.price,
    required this.date,
    required this.showFavourite,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                pageRoute(context, const ProductDetails());
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(image!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              name!,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date!,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),
                  ),
                  showFavourite
                ? const Icon(Icons.favorite, color: Colors.red)
                :Text(
                    "Rs.$price",
                    style: GoogleFonts.poppins(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),                      
          ],
        ),
      ),
    );
  }
}
