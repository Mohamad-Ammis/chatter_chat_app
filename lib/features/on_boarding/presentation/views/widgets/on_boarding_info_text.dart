
import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingInfoText extends StatelessWidget {
  const OnBoardingInfoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stay connected with your friends and family',
          style: Styles.style36Bold.copyWith(
              color: Theme.of(context).textTheme.bodyLarge!.color),
        ),
        30.verticalSizedBox,
        Row(
          children: [
            SvgPicture.asset(pref.getBool('isDarkMode') == true
                ? Assets.imagesShieldCheckDark
                : Assets.imagesShieldCheckLight),
            8.horizontalSizedBox,
            Text(
              'Secure, private messaging',
              style: Styles.style16SemiBold,
            ),
          ],
        ),
      ],
    );
  }
}
