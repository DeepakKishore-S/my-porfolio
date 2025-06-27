import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../res/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText(
      {super.key,
      required this.title,
      required this.text,
      this.isLink = false,
      this.uri,
      this.icon});
  final String title;
  final String text;
  final String? uri;
  final bool isLink;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(title, style: const TextStyle(color: Colors.white)),
            ],
          ),
          isLink
              ? InkWell(
                  onTap: () async {
                    final url = Uri.tryParse(uri ?? '');
                    if (url != null && await canLaunchUrl(url)) {
                      launchUrl(url);
                    }
                  },
                  child: Row(
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                            color: Color(0xFF80D8FF),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500),
                      ),
                      if (icon != null) ...[
                        const SizedBox(width: 4),
                        Icon(icon, color: Color(0xFF80D8FF), size: 16),
                      ],
                    ],
                  ),
                )
              : Row(
                  children: [
                    Text(text, style: const TextStyle(color: Colors.white70)),
                    if (icon != null) ...[
                      const SizedBox(width: 4),
                      Icon(icon, color: Colors.white70, size: 16),
                    ],
                  ],
                ),
        ],
      ),
    );
  }
}
