import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/login_view_form.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kMainPagePadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAuthHeader(title: 'Login here', subTitle: 'Welcome back you’ve been missed!',),
              80.verticalSizedBox,
              const LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
