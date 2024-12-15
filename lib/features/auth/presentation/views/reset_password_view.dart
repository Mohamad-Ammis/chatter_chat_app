import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_view_email_details.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: true,
      body: const ResetPasswordViewEmailDetails(),
    );
  }
}
