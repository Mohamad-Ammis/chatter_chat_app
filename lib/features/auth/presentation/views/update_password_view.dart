import 'package:chatter_chat_app/features/auth/presentation/views/widgets/update_password_view_body.dart';
import 'package:flutter/material.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const UpdatePasswordViewBody(),
    );
  }
}
