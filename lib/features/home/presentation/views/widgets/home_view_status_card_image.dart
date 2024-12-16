
import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeViewStatusCardImage extends StatelessWidget {
  const HomeViewStatusCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Image.asset(
          Assets.imagesTest,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
