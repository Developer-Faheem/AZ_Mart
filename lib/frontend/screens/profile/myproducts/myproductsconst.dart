import 'package:azmart/frontend/screens/profile/myproducts/editproducts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../app_constant.dart';
import '../../../../components/common_Route.dart';

class MyProductConst extends StatelessWidget {
  const MyProductConst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.0,
                color: Colors.grey,
              ),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/pile-fresh-vegetables_144627-16683.jpg?w=2000"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const ListTile(
            title: Text("Vegetables"),
            trailing: Text("12/6/22"),
            subtitle: Text("best and fresh"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "4.5",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        pageRoute(context, const EditProductPage());
                      },
                      child: const Icon(
                        Icons.edit_outlined,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Icon(
                      Icons.delete_outlined,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          const Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
