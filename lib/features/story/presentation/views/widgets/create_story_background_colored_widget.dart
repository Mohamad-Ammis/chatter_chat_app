
import 'package:chatter_chat_app/features/story/presentation/manger/story_color_cubit/create_story_color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateStoryBackgroundColoredWidget extends StatelessWidget {
  const CreateStoryBackgroundColoredWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateStoryColorCubit, Color>(
      builder: (context, state) {
        return Container(
          height: double.infinity,
          width: MediaQuery.sizeOf(context).width,
          color: state,
        );
      },
    );
  }
}
