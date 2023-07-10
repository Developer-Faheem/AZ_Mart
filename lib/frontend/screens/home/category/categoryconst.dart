import 'package:azmart/components/common_Route.dart';
import 'package:azmart/frontend/screens/home/category/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app_constant.dart';

class CategoriesConst extends StatelessWidget {
  String name;
  String svg;
   CategoriesConst({
    super.key,
    required this.name,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pageRoute(context, CategoryPage(name: name));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(svg, height: 16),
              Text(
                name,
                style: GoogleFonts.poppins(
                  color: AppColors.bgWhiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
