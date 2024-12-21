// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

Future<CroppedFile?> pickAndCropStoryImage(BuildContext context) async {
  try {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: result.files[0].path!,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'crop image',
            toolbarColor: Theme.of(context).scaffoldBackgroundColor,
            toolbarWidgetColor: Theme.of(context).textTheme.bodyLarge!.color!,
            activeControlsWidgetColor: Theme.of(context).primaryColor,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            lockAspectRatio: false,
          ),
        ],
      );
      return croppedFile;
    } else {
      log('NO file picked');
    }
    return null;
  } on Exception catch (e) {
    log('e: $e');
    return null;
  }
}
