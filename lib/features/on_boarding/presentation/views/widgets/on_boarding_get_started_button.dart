import 'package:chatter_chat_app/core/utils/app_routes.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingGetStartedButton extends StatelessWidget {
  const OnBoardingGetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {
        context.push(AppRouter.kLoginPath);
      },
      color: Theme.of(context).textTheme.bodyLarge!.color,
      borderRadius: BorderRadius.circular(999),
      height: 60,
      child: Center(
        child: Text('Get Started',
            style: Styles.style16Bold.copyWith(
                color: pref.getBool('isDarkMode') == true
                    ? Colors.black
                    : Colors.white)),
      ),
    );
  }
}
