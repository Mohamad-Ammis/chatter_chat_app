import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_routes.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAuthFooter extends StatelessWidget {
  const CustomAuthFooter({
    super.key,
    required this.title,
    required this.pushRoute,
  });
  final String title;
  final String pushRoute;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(pushRoute);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: Styles.style14SemiBold.copyWith(
              fontFamily: kSecondryFontFamily,
              color: Theme.of(context).textTheme.bodySmall!.color),
        ),
      ),
    );
  }
}
