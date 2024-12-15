import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_header.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_verfication_otp_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordVerficationViewBody extends StatelessWidget {
  const ResetPasswordVerficationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMainPagePadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 4 * .5,
            ),
            40.verticalSizedBox,
            const ResetPasswordHeader(
              title: 'Enter Code',
              subTitle:
                  'We have sent you an SMS with the code to +62 1309 - 1710 - 1920',
            ),
            40.verticalSizedBox,
            const ResetPasswordVerficationOtpTextField(),
          ],
        ),
      ),
    );
  }
}
