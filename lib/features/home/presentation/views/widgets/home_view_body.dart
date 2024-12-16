import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeViewAppBar(),
        16.verticalSizedBox,
        HomeViewStatusSection(),
      ],
    );
  }
}
