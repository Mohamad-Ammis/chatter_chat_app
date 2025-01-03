
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/story/functions/pick_and_crop_story_image.dart';
import 'package:chatter_chat_app/features/story/functions/pick_and_trim_story_video.dart';
import 'package:flutter/material.dart';

class CreateStoryWaysTextButtons extends StatelessWidget {
  const CreateStoryWaysTextButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () async {
            await pickAndTrimStoryVideo(context);
          },
          child: const Text(
            "Video",
            style: TextStyle(color: Colors.white),
          ),
        ),
        16.horizontalSizedBox,
        InkWell(
          onTap: () async {
            await pickAndCropStoryImage(context);
          },
          child: const Text(
            "Image",
            style: TextStyle(color: Colors.white),
          ),
        ),
        16.horizontalSizedBox,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(
              // ignore: deprecated_member_use
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(999)),
          child: const Text(
            "Text",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
