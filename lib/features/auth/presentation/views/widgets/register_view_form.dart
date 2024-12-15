import 'package:chatter_chat_app/core/utils/app_routes.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:chatter_chat_app/core/widgets/custom_pass_text_field.dart';
import 'package:chatter_chat_app/core/widgets/custom_text_field.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/custom_auth_footer.dart';
import 'package:flutter/material.dart';

class RegisterViewForm extends StatelessWidget {
  const RegisterViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomTextField(
          textStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
          cursorColor: Theme.of(context).primaryColor,
          label: 'Name',
          labelStyle: Styles.style16Regular
              .copyWith(color: Theme.of(context).textTheme.bodySmall!.color),
          filled: true,
          suffixIcon: null,
          isUserName: true,
          maxLines: 1,
          borderRadius: 10,
        ),
        29.verticalSizedBox,
        CustomTextField(
          textStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
          cursorColor: Theme.of(context).primaryColor,
          label: 'Email',
          labelStyle: Styles.style16Regular
              .copyWith(color: Theme.of(context).textTheme.bodySmall!.color),
          filled: true,
          suffixIcon: null,
          isEmail: true,
          maxLines: 1,
          borderRadius: 10,
        ),
        29.verticalSizedBox,
        CustomPasswordTextField(
          suffixIconColor: Theme.of(context).textTheme.bodySmall!.color,
          textStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyLarge!.color),
          cursorColor: Theme.of(context).primaryColor,
          label: 'Password',
          labelStyle: Styles.style16Regular
              .copyWith(color: Theme.of(context).textTheme.bodySmall!.color),
          filled: true,
          borderRadius: 10,
        ),
        30.verticalSizedBox,
        CustomButton(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                color: Theme.of(context).shadowColor,
                blurRadius: 20)
          ],
          child: Text(
            textAlign: TextAlign.center,
            'Register',
            style: Styles.style20SemiBold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        40.verticalSizedBox,
        const CustomAuthFooter(
          title: 'Already have an account',
          pushRoute: AppRouter.kLoginPath,
        )
      ],
    );
  }
}
