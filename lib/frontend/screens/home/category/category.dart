import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app_constant.dart';
import '../homeProductsConst.dart';

class CategoryPage extends StatefulWidget {
  String name;
  CategoryPage({super.key, required this.name});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: GoogleFonts.poppins(
            color: AppColors.blackColor,
          ),
        ),
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
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.73),
        itemBuilder: (context, index) {
          return HomeProductConst(
              showFavourite: false,
              image:
                  "https://img.freepik.com/free-photo/pile-fresh-vegetables_144627-16683.jpg?w=2000",
              name: " Fresh Vegetables",
              price: "1200",
              date: "12/3/23");
        },
      ),
    );
  }
}
