
import 'package:chatter_chat_app/features/story/presentation/manger/cubit/story_text_decoration_cubit.dart';
import 'package:chatter_chat_app/features/story/presentation/manger/story_color_cubit/create_story_color_cubit.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/create_story_header_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateStoryHeader extends StatelessWidget {
  const CreateStoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 20,
        left: 20,
        right: 20,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CreateStoryHeaderIcon(
                icon: Icons.close,
                onTap: () {
                  context.pop();
                },
              ),
              Row(
                children: [
                  CreateStoryHeaderIcon(
                      onTap: () {
                        context
                            .read<StoryTextDecorationCubit>()
                            .updateFontWeight();
                      },
                      icon: Icons.text_fields_outlined),
                  const SizedBox(
                    width: 8,
                  ),
                  CreateStoryHeaderIcon(
                      onTap: () {
                        context
                            .read<CreateStoryColorCubit>()
                            .updateStatusColor();
                      },
                      icon: Icons.color_lens_outlined),
                ],
              ),
            ],
          ),
        ));
  }
}
