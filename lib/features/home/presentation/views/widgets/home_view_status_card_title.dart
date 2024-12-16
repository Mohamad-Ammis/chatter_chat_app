import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewStatusCardTitle extends StatelessWidget {
  const HomeViewStatusCardTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Text(
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        title,
        style: Styles.style10Regular,
      ),
    );
  }
}
