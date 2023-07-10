import 'package:flutter/material.dart';

import '../../../../app_constant.dart';
import '../../home/homeProductsConst.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
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
      body: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.73),
        itemBuilder: (context, index) {
          return HomeProductConst(
              showFavourite: true,
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
