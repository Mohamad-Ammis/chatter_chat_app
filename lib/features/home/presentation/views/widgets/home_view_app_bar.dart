import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMainPagePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(text: "Welcome Back\n", style: Styles.style16Regular),
            TextSpan(text: "Mohamad 👋", style: Styles.style20Bold),
          ])),
          // GestureDetector(
          //     child: SvgPicture.asset(
          //   Assets.imagesSearchIcon,
          //   width: 32,
          //   // ignore: deprecated_member_use
          //   color: Theme.of(context).textTheme.bodyLarge!.color,
          // )),
        ],
      ),
    );
  }
}
