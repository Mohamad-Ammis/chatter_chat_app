import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordVerficationOtpTextField extends StatelessWidget {
  const ResetPasswordVerficationOtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      enabledBorderColor: kSubTitleColor,
      autoFocus: true,
      numberOfFields: 5,
      borderColor: Theme.of(context).primaryColor,
      focusedBorderColor: Theme.of(context).primaryColor,
      cursorColor: Theme.of(context).primaryColor,
      showFieldAsBox: false,
      borderRadius: BorderRadius.circular(10),
      onSubmit: (String verificationCode) {
        context.push(AppRouter.kUpdatePasswordPath);
      }, // end onSubmit
    );
  }
}
