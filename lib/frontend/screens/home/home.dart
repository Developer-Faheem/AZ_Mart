import 'dart:math';

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

    List<String> assetImages = [
  'assets/images/products/1.jpg',
  'assets/images/products/2.jpg',
  'assets/images/products/3.jpg',
  'assets/images/products/4.jpg',
  'assets/images/products/6.jpg',
  'assets/images/products/7.jpg',
  'assets/images/products/8.jpg',
   'assets/images/products/9.jpg',
    'assets/images/products/10.jpg',
     'assets/images/products/11.jpg',
      'assets/images/products/12.jpg',
       'assets/images/products/13.jpg',
        'assets/images/products/14.jpg',
         'assets/images/products/15.jpg',
          'assets/images/products/17.jpg',
           'assets/images/products/16.jpg',
  // Add more image paths as needed
];
 List<String> prices = [
  '1000',
    '1200',
      '1100',
        '800',
          '1300',
            '1400',
              '1500',
                '700',
                  '900',
  
  // Add more image paths as needed
];
List<String> dates = [
  '13/9/23',
   '10/3/23',
   '17/8/23',
   '20/1/23',
   '30/4/23',
   '15/8/23',
   '11/2/23',
   '22/3/23',
   '27/4/23',
   '7/5/23',
  
  // Add more image paths as needed
];

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
            itemCount: 11,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.73),
            itemBuilder: (context, index) {

              // Randomly select an asset image path
    Random random = Random();
    String randomImage = assetImages[random.nextInt(assetImages.length)];
      String randomPrices = prices[random.nextInt(prices.length)];
      String randomDates = dates[random.nextInt(dates.length)];

              return HomeProductConst(
                  showFavourite: false,
                  image:
                     randomImage,
                  name: " Fresh Grocery",
                  price: randomPrices.toString(),
                  date: randomDates);
            },
          ),
        ],
      ),
    ));
  }
}
