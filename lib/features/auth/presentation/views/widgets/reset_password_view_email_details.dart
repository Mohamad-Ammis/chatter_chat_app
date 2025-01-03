import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_email_details_form.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_header.dart';
import 'package:flutter/material.dart';

class ResetPasswordViewEmailDetails extends StatelessWidget {
  const ResetPasswordViewEmailDetails({super.key});

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
            const ResetPasswordHeader(
              title: 'Enter Your Phone Number',
              subTitle:
                  'Please confirm your country code and enter your phone number',
            ),
            40.verticalSizedBox,
            const ResetPasswordEmailDetailsForm(),
            40.verticalSizedBox,
          ],
        ),
      ),
    );
  }
}
