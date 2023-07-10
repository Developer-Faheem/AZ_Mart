import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


pageRoute(BuildContext context, page) {
  Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: page,
      duration: const Duration(milliseconds: 400),
    ),
  );
}
