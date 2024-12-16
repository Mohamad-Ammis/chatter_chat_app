import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_create_story_card.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_card.dart';
import 'package:flutter/material.dart';

class HomeViewStatusSection extends StatelessWidget {
  const HomeViewStatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: index == 0
                    ? const HomeViewCreateStoryCard()
                    : const HomeViewStatusCard(),
              )),
    );
  }
}
