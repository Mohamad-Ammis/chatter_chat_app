
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:chatter_chat_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UpdatePasswordForm extends StatelessWidget {
  const UpdatePasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            textStyle: Styles.style14Regular,
            label: "password",
            filled: true,
            cursorColor: Theme.of(context).primaryColor,
            autoFocus: true,
            suffixIcon: null),
        30.verticalSizedBox,
        CustomButton(
          onTap: () {},
          borderRadius: BorderRadius.circular(999),
          child: Text(
            textAlign: TextAlign.center,
            'Submit',
            style: Styles.style16Bold.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
