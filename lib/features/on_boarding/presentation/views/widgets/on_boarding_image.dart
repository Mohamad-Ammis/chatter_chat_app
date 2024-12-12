import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      pref.getBool('isDarkMode') == true
          ? Assets.imagesOnBoardingCollaborationImage
          : Assets.imagesIllustration,
      height: 250,
    ));
  }
}
