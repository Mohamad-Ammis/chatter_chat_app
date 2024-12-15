import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ResetPasswordEmailDetailsHeader extends StatelessWidget {
  const ResetPasswordEmailDetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        30.verticalSizedBox,
        Text(
            textAlign: TextAlign.center,
            'Enter Your Phone Number',
            style:
                Styles.style24Bold.copyWith(fontFamily: kSecondryFontFamily)),
        24.verticalSizedBox,
        Text(
          textAlign: TextAlign.center,
          'Please confirm your country code and enter your phone number',
          style: Styles.style14Regular
              .copyWith(fontFamily: kSecondryFontFamily, color: kSubTitleColor),
        ),
      ],
    );
  }
}
