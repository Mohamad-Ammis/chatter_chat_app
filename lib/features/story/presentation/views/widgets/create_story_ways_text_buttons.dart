import 'dart:developer';
import 'dart:io';

import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/story/functions/pick_and_trim_story_video.dart';
import 'package:chatter_chat_app/features/story/presentation/views/widgets/video_trimmer_view.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_cropper/image_cropper.dart';

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
          child: Text(
            "Video",
            style: TextStyle(color: Colors.white),
          ),
        ),
        16.horizontalSizedBox,
        InkWell(
          onTap: () async {
            try {
              FilePickerResult? result =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null) {
                CroppedFile? croppedFile = await ImageCropper().cropImage(
                  sourcePath: result!.files[0].path!,
                  uiSettings: [
                    AndroidUiSettings(
                      toolbarTitle: 'crop image',
                      toolbarColor: Theme.of(context).scaffoldBackgroundColor,
                      toolbarWidgetColor:
                          Theme.of(context).textTheme.bodyLarge!.color!,
                      activeControlsWidgetColor: Theme.of(context).primaryColor,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      lockAspectRatio: false,
                    ),
                  ],
                );
              } else {
                log('NO file picked');
              }
            } on Exception catch (e) {
              log('e: $e');
            }
          },
          child: Text(
            "Image",
            style: TextStyle(color: Colors.white),
          ),
        ),
        16.horizontalSizedBox,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(999)),
          child: Text(
            "Text",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
