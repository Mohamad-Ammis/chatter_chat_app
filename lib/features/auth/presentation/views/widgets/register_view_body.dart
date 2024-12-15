import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/register_view_form.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kMainPagePadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAuthHeader(
                title: 'Create Account',
                subTitle: 'Create an account so you can join our chatter app',
              ),
              80.verticalSizedBox,
              RegisterViewForm()
            ],
          ),
        ),
      ),
    );
  }
}
