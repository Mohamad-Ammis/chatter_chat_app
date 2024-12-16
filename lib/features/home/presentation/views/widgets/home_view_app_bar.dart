
import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(text: "Welcome Back\n", style: Styles.style16Regular),
          TextSpan(text: "Mohamad 👋", style: Styles.style20Bold),
        ])),
        GestureDetector(
            child: SvgPicture.asset(
          Assets.imagesSearchIcon,
        )),
      ],
    );
  }
}
