import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_chat_card.dart';
import 'package:flutter/material.dart';

class HomeViewChatsListView extends StatelessWidget {
  const HomeViewChatsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: kMainPagePadding),
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const HomeViewChatCard();
        });
  }
}
