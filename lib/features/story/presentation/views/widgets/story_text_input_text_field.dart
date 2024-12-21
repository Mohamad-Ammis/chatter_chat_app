import 'package:chatter_chat_app/features/story/presentation/manger/cubit/story_text_decoration_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryTextInputTextField extends StatelessWidget {
  const StoryTextInputTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryTextDecorationCubit, double>(
      builder: (context, state) {
        return TextField(
          expands: true,
          minLines: null,
          maxLines: null,
          autofocus: true,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontSize: state,
            color: Colors.white,
          ),
          cursorColor: Colors.green,
          decoration: const InputDecoration(
              hintText: 'What is in your mind',
              hintStyle: TextStyle(fontSize: 32, color: Colors.black26),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
        );
      },
    );
  }
}
