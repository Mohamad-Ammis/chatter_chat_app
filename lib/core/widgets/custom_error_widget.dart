import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key,
      required this.title,
      this.hasAnimation = true,
      this.onTap,
      this.hasRelodButton});
  final String title;
  final bool hasAnimation;
  final bool? hasRelodButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (hasAnimation)
          Lottie.asset('assets/lottie/error.json',
              height: 200, fit: BoxFit.contain),
        Center(
          child: Text(
            title,
            style: Styles.style14Regular,
          ),
        ),
        16.verticalSizedBox,
        if (hasRelodButton ?? false)
          CustomButton(
            onTap: onTap,
            width: 150,
            height: 48,
            padding: const EdgeInsets.all(0),
            child: Center(
              child: Text(
                "Reload",
                style: Styles.style16Bold.copyWith(color: Colors.white),
              ),
            ),
          )
      ],
    );
  }
}
