import 'dart:developer';
import 'dart:io';

import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:video_trimmer/video_trimmer.dart';

class TrimmerView extends StatefulWidget {
  final File file;

  TrimmerView(this.file);

  @override
  _TrimmerViewState createState() => _TrimmerViewState();
}

class _TrimmerViewState extends State<TrimmerView> {
  final Trimmer _trimmer = Trimmer();

  double _startValue = 0.0;
  double _endValue = 0.0;

  bool _isPlaying = false;
  bool _progressVisibility = false;

  Future<void> _sendVideo() async {
    setState(() {
      _progressVisibility = true;
    });

    String? outputPath;

    await _trimmer
        .saveTrimmedVideo(
      startValue: _startValue,
      endValue: _endValue,
      onSave: (String? path) {
        outputPath = path;
      },
    )
        .then((_) async {
      if (outputPath != null) {
        File trimmedVideo = File(outputPath!);
        await _uploadVideo(trimmedVideo);
      }

      setState(() {
        _progressVisibility = false;
      });
    });
  }

  Future<void> _uploadVideo(File video) async {
    log('from upload');
  }

  void _loadVideo() {
    _trimmer.loadVideo(videoFile: widget.file);
  }

  @override
  void initState() {
    super.initState();
    _loadVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Builder(
        builder: (context) => Center(
          child: Container(
            padding: EdgeInsets.only(bottom: 30.0),
            // color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Visibility(
                  visible: _progressVisibility,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                ),
                Expanded(
                  child: VideoViewer(
                    trimmer: _trimmer,
                  ),
                ),
                Center(
                  child: TrimViewer(
                    trimmer: _trimmer,
                    durationTextStyle: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color!),
                    viewerHeight: 50.0,
                    viewerWidth: MediaQuery.of(context).size.width,
                    type: ViewerType.fixed,
                    maxVideoLength: const Duration(seconds: 30),
                    onChangeStart: (value) => _startValue = value,
                    onChangeEnd: (value) => _endValue = value,
                    onChangePlaybackState: (value) =>
                        setState(() => _isPlaying = value),
                  ),
                ),
                IconButton(
                  icon: _isPlaying
                      ? Icon(
                          Icons.pause,
                          size: 60.0,
                          color: Theme.of(context).textTheme.bodyLarge!.color!,
                        )
                      : Icon(
                          Icons.play_arrow,
                          size: 60.0,
                          color: Theme.of(context).textTheme.bodyLarge!.color!,
                        ),
                  onPressed: () async {
                    bool playbackState = await _trimmer.videoPlaybackControl(
                      startValue: _startValue,
                      endValue: _endValue,
                    );
                    setState(() {
                      _isPlaying = playbackState;
                    });
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kMainPagePadding),
                  child: CustomButton(
                    color: Theme.of(context).textTheme.bodyLarge!.color!,
                    child: Center(
                        child: Text(
                      'Submit',
                      style: Styles.style16Bold.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor),
                    )),
                    height: 56,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
