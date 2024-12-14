import 'package:chatter_chat_app/features/auth/presentation/views/widgets/corner_decoration_circul.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CornerDecorationCircul(),
          RegisterViewBody()
        ],
      ),
    );;
  }
}