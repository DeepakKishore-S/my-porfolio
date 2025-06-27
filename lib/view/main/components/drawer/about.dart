import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'drawer_image.dart';
import 'about_me_data.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: darkColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const DrawerImage(),
            const Spacer(),
            Text(
              AboutMeData.name,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 0,
                  ),
            ),
            const SizedBox(height: defaultPadding / 4),
            const Text(
              AboutMeData.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                height: 1.2,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: defaultPadding / 4),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                AboutMeData.profile,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    height: 1.3,
                    fontSize: 12),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
