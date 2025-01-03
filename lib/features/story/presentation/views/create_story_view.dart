
import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_background_colored_widget.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_footer.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_header.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/story_text_input_text_field.dart';
import 'package:flutter/material.dart';

class CreateStoryView extends StatelessWidget {
  const CreateStoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const CreateStoryBackgroundColoredWidget(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: const Column(
                children: [
                  Expanded(child: StoryTextInputTextField()),
                  CreateStoryFooter()
                ],
              ),
            ),
            const CreateStoryHeader(),
          ],
        ),
      ),
    );
  }
}
