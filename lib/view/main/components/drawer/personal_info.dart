import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'header_info.dart';
import 'about_me_data.dart';
import '../../../../res/constants.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: AboutMeData.phone),
        AreaInfoText(title: 'Email', text: AboutMeData.email),
        AreaInfoText(
          title: 'LinkedIn',
          text: 'Deepak Kishore S',
          isLink: true,
          icon: Icons.link,
          uri: AboutMeData.linkedin,
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
