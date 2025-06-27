import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding / 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              Color(0xFFB8C1EC), // Soft blue
              Color(0xFF9A8C98), // Muted purple
            ],
          ),
          boxShadow: const [
            BoxShadow(
                color: Color(0x33232946), blurRadius: 10, offset: Offset(0, 2)),
            BoxShadow(
                color: Color(0x339A8C98),
                blurRadius: 10,
                offset: Offset(0, -2)),
          ]),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/profile.jpeg',
            fit: BoxFit.contain,
          )),
    );
  }
}
