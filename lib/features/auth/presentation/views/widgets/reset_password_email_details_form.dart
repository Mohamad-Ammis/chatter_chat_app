import 'package:chatter_chat_app/core/utils/app_routes.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:chatter_chat_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordEmailDetailsForm extends StatelessWidget {
  const ResetPasswordEmailDetailsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          textStyle: Styles.style16Regular,
          label: 'Email',
          filled: true,
          suffixIcon: null,
          maxLines: 1,
          cursorColor: Theme.of(context).primaryColor,
          autoFocus: true,
        ),
        30.verticalSizedBox,
        CustomButton(
          onTap: () {
            context.push(AppRouter.kResetPasswordVerficationPath);
          },
          borderRadius: BorderRadius.circular(999),
          child: Text(
            textAlign: TextAlign.center,
            'Continue',
            style: Styles.style16Bold.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
