import 'dart:math';

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
           Random random = Random();
    String randomImage = assetImages[random.nextInt(assetImages.length)];
    String randomPrices = prices[random.nextInt(prices.length)];
      String randomDates = dates[random.nextInt(dates.length)];

          return HomeProductConst(
              showFavourite: false,
              image:
                  randomImage,
              name: " Fresh Vegetables",
              price: randomPrices.toString(),
              date: randomDates.toString());
        },
      ),
    );
  }
}
