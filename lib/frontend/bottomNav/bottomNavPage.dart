import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:azmart/frontend/screens/home/home.dart';
import 'package:azmart/frontend/screens/notifications/notification.dart';
import 'package:azmart/frontend/screens/post_products/add_products.dart';
import 'package:azmart/frontend/screens/profile/profile.dart';
import 'package:flutter/material.dart';

import '../../app_constant.dart';
import '../../components/common_Route.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex = 0;
  List screensList = [
    const HomePage(),
    const NotificationsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pageRoute(context, const AddProductsPage());
        },
        backgroundColor: AppColors.primaryColor,
        child: const Center(
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        borderColor: Colors.grey,
        backgroundColor: AppColors.bgWhiteColor,
        icons: const [
          Icons.home_outlined,
          Icons.notifications_outlined,
          Icons.person_outlined,
        ],
        activeIndex: currentIndex,
        activeColor: AppColors.primaryColor,
        inactiveColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
