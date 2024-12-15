import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        30.verticalSizedBox,
        Text(
            textAlign: TextAlign.center,
            title,
            style:
                Styles.style24Bold.copyWith(fontFamily: kSecondryFontFamily)),
        24.verticalSizedBox,
        Text(
          textAlign: TextAlign.center,
          subTitle,
          style: Styles.style14Regular
              .copyWith(fontFamily: kSecondryFontFamily, color: kSubTitleColor),
        ),
      ],
    );
  }
}
