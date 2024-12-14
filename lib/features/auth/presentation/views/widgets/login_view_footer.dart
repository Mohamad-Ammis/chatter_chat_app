
import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class LoginViewFooter extends StatelessWidget {
  const LoginViewFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Create new account',
      style: Styles.style14SemiBold.copyWith(
          fontFamily: kSecondryFontFamily,
          color: Theme.of(context).textTheme.bodySmall!.color),
    );
  }
}
