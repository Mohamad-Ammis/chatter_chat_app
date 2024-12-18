
import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeViewChatSectionHeader extends StatelessWidget {
  const HomeViewChatSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          kMainPagePadding, 0, kMainPagePadding, 24),
      child: Text(
        "Chats",
        style: Styles.style24Bold,
      ),
    );
  }
}
