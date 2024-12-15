import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:chatter_chat_app/core/widgets/custom_text_field.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_email_details_form.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_email_details_header.dart';
import 'package:flutter/material.dart';

class ResetPasswordViewEmailDetails extends StatelessWidget {
  const ResetPasswordViewEmailDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: kMainPagePadding,
        right: kMainPagePadding,
      ),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 4,
              ),
              ResetPasswordEmailDetailsHeader(),
              40.verticalSizedBox,
              ResetPasswordEmailDetailsForm(),
              40.verticalSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
