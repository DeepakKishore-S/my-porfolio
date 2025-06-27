import 'package:flutter/material.dart';
import 'knowledge.dart';
import 'about_me_data.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge', style: TextStyle(color: Colors.white)),
        ),
        ...AboutMeData.skills.map((skill) => KnowledgeText(knowledge: skill)),
      ],
    );
  }
}
