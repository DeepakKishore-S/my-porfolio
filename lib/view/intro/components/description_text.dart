import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return SizedBox(
          width: Responsive.isLargeMobile(context) ? 300 : 500,
          child: Text(
            'Experienced Flutter developer with a strong background in building responsive web and mobile applications.${Responsive.isLargeMobile(context) ? '\n' : ''}Skilled in Dart, UI/UX design, end-to-end project delivery, and managing teams.',
            softWrap: true,
            overflow: TextOverflow.visible,
            style: TextStyle(
              color: Colors.white,
              wordSpacing: 2,
              fontSize: value,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.7),
                  blurRadius: 8,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
