import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_header.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/update_password_form.dart';
import 'package:flutter/material.dart';

class UpdatePasswordViewBody extends StatelessWidget {
  const UpdatePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kMainPagePadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (MediaQuery.sizeOf(context).height / 4 * .5).verticalSizedBox,
            40.verticalSizedBox,
            const ResetPasswordHeader(
              title: 'Enter New Password',
              subTitle:
                  'Please enter new password and save it in secure place 👀 ',
            ),
            40.verticalSizedBox,
            const UpdatePasswordForm(),
          ],
        ),
      ),
    );
    
  }
}
