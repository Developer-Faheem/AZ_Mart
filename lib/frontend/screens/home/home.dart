import 'package:azmart/frontend/screens/home/category/categoryconst.dart';
import 'package:azmart/frontend/screens/home/homeProductsConst.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_constant.dart';
import '../../../components/common_Route.dart';
import 'add_cart/add_cart.dart';
import 'search/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          // search  bar
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: (e) {
                      pageRoute(context, const SearchPage());
                    },
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "looking for something fresh ?",
                      suffixIcon: const Icon(Icons.search,
                          color: AppColors.primaryColor),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    pageRoute(context, const AddtoCartPage());
                  },
                  child: const Icon(Icons.shopping_cart_outlined,
                      color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Categories",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoriesConst(name: "Fish", svg: AppSvg.fishSvg),
                  CategoriesConst(name: "Carrot", svg: AppSvg.carrotSvg),
                  CategoriesConst(name: "Bread", svg: AppSvg.breadSvg),
                  CategoriesConst(name: "Meat", svg: AppSvg.meatSvg),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Best For You",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.73),
            itemBuilder: (context, index) {
              return HomeProductConst(
                  showFavourite: false,
                  image:
                      "https://www.pngfind.com/pngs/m/183-1835546_free-png-download-ghol-fish-png-png-images.png",
                  name: " Fresh Salmon",
                  price: "1200",
                  date: "12/3/23");
            },
          ),
        ],
      ),
    ));
  }
}
