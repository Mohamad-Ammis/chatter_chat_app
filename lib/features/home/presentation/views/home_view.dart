import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kMainPagePadding, vertical: 16),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
