import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_create_story_card_icon.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_card_title.dart';
import 'package:flutter/material.dart';

class HomeViewCreateStoryCard extends StatelessWidget {
  const HomeViewCreateStoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          padding: const EdgeInsets.all(2),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: kGreyBorderColor, width: 2)),
          child: const HomeViewCreateStoryCardIcon(),
        ),
        4.verticalSizedBox,
        const HomeViewStatusCardTitle(title: 'Create story')
      ],
    );
  }
}
