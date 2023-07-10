import 'package:azmart/frontend/screens/notifications/notification_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(height: 12),
        Text(
          "Notifications",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 12),
        const NotificationConst(),
        const NotificationConst(),
        const NotificationConst(),
      ],
    ));
  }
}

