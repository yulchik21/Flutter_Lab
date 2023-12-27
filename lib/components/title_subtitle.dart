import 'package:effective_flutter_lab/data/data.dart';
import 'package:flutter/material.dart';

class TitleSubtitle extends StatelessWidget {
  const TitleSubtitle(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: MyTextStyles.title
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: MyTextStyles.subtitle
          )
        ],
      ),
    );
  }
}
