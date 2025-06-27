import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/projects/components/project_link.dart';
import '../../../model/project_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    // Calculate maxLines responsively
    int getMaxLines(double width) {
      if (width < 470) return 2;
      if (width > 700 && width < 750) return 3;
      if (width > 600 && width < 700) return 6;
      if (width > 900 && width < 1060) return 6;
      return 4;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Project Name
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
              shadows: [
                Shadow(
                  blurRadius: 4,
                  color: Colors.cyanAccent.withOpacity(0.4),
                  offset: Offset(1, 1),
                ),
              ],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        Responsive.isMobile(context)
            ? const SizedBox(height: defaultPadding / 2)
            : const SizedBox(height: defaultPadding),

        /// Description
        Text(
          projectList[index].description,
          style: TextStyle(
            color: Colors.white.withOpacity(0.75),
            fontSize: 13.5,
            height: 1.6,
            fontWeight: FontWeight.w400,
          ),
          maxLines: getMaxLines(size.width),
          overflow: TextOverflow.ellipsis,
        ),

        const Spacer(),

        /// Project Links
        ProjectLinks(index: index),

        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
