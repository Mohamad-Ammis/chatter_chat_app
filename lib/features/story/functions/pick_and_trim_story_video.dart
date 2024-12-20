
  import 'dart:developer';
import 'dart:io';

import 'package:chatter_chat_app/features/story/presentation/views/widgets/video_trimmer_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

Future<void> pickAndTrimStoryVideo(BuildContext context) async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.video);
      if (result != null && result.files.isNotEmpty) {
        String? filePath = result.files.single.path;
        if (filePath != null) {
          log(filePath);
          File file = File(filePath);
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return TrimmerView(file);
            }),
          );
        } else {
          log("File path is null.");
        }
      } else {
        log("No file selected.");
      }
    } catch (e) {
      log("Error: $e");
    }
  }

