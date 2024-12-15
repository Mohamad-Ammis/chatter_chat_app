import 'package:chatter_chat_app/features/auth/presentation/views/widgets/reset_password_verfication_view_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordVerficationView extends StatelessWidget {
  const ResetPasswordVerficationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResetPasswordVerficationViewBody(),
    );
  }
}
