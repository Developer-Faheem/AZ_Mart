import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app_constant.dart';
import '../homeProductsConst.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Result",
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
