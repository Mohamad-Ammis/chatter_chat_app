import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_submit_text_button.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_ways_text_buttons.dart';
import 'package:flutter/material.dart';

class CreateStoryFooter extends StatelessWidget {
  const CreateStoryFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(color: Colors.black38),
      child: Row(
        children: [
          CreateStoryWaysTextButtons(),
          Spacer(),
          CreateStorySubmitTextButton()
        ],
      ),
    );
  }
}
