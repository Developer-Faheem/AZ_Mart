import 'package:azmart/frontend/screens/profile/edit_profile/edit_profile.dart';
import 'package:azmart/frontend/screens/profile/favourites/favourites.dart';
import 'package:azmart/frontend/screens/profile/myproducts/myproducts.dart';
import 'package:flutter/material.dart';

import '../../../app_constant.dart';
import '../../../components/common_Route.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.primaryColor,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/3378/3378424.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Soum Shahid",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "soum12@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              pageRoute(context, const EditProfile());
            },
            leading: const Icon(
              Icons.edit_outlined,
              color: AppColors.primaryColor,
            ),
            title: const Text("Edit Profile"),
            subtitle: const Text("Change your name and address"),
          ),
          ListTile(
            onTap: () {
              pageRoute(context, const FavouritesPage());
            },
            leading: const Icon(
              Icons.favorite_outline,
              color: AppColors.primaryColor,
            ),
            title: const Text("Favourites"),
            subtitle: const Text("View your favourite things"),
          ),
          ListTile(
            onTap: () {
              pageRoute(context, const MyProductsPage());
            },
            leading: const Icon(
              Icons.inventory,
              color: AppColors.primaryColor,
            ),
            title: const Text("My Products"),
            subtitle: const Text("View and manage my products"),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.logout_outlined,
              color: AppColors.primaryColor,
            ),
            title: const Text("Logout"),
            subtitle: const Text("Exit from account"),
          ),
        ],
      ),
    );
  }
}
