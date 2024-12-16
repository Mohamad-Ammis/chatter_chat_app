import 'dart:async';
import 'package:flutter/material.dart';

class ResetPasswordResendCodeButtonWithTimer extends StatefulWidget {
  const ResetPasswordResendCodeButtonWithTimer({super.key});

  @override
  State<ResetPasswordResendCodeButtonWithTimer> createState() =>
      _ResetPasswordResendCodeButtonWithTimerState();
}

class _ResetPasswordResendCodeButtonWithTimerState
    extends State<ResetPasswordResendCodeButtonWithTimer> {
  bool isButtonDisabled = false;
  int remainingTime = 0;
  Timer? timer;

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    setState(() {
      isButtonDisabled = true;
      remainingTime = 5 * 60;
    });

    timer = Timer.periodic(oneSecond, (Timer t) {
      setState(() {
        if (remainingTime < 1) {
          t.cancel();
          isButtonDisabled = false;
        } else {
          remainingTime--;
        }
      });
    });
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$secs';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: isButtonDisabled ? null : startTimer,
          child: Text(
            "Resend code?",
            style: TextStyle(
              fontFamily: 'SecondaryFont',
              color: isButtonDisabled
                  ? Colors.grey
                  : Theme.of(context).primaryColor,
            ),
          ),
        ),
        if (isButtonDisabled)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              formatTime(remainingTime),
              style: const TextStyle(
                fontSize: 14,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
