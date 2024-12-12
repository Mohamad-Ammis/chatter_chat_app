import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';

BoxDecoration onBoardingViewBackgroundImage() {
  return BoxDecoration(
      image: DecorationImage(
    image: AssetImage(
      Assets.imagesChatIconsWallpaper,
    ),
    fit: BoxFit.cover,
    // colorFilter: ColorFilter.mode(
    //     Color(0xff131212).withOpacity(.8), BlendMode.darken)
  ));
}
