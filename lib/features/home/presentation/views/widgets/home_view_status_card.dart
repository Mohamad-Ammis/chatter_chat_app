import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class HomeViewStatusCard extends StatelessWidget {
  const HomeViewStatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: Theme.of(context).primaryColor)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: Image.asset(
            Assets.imagesTest,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
