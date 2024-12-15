
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ResetPasswordVerficationOtpTextField extends StatelessWidget {
  const ResetPasswordVerficationOtpTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      enabledBorderColor:
          Theme.of(context).textTheme.bodyLarge!.color!,
      autoFocus: true,
      numberOfFields: 5,
      borderColor: Theme.of(context).primaryColor,
      focusedBorderColor: Theme.of(context).primaryColor,
      cursorColor: Theme.of(context).primaryColor,
      showFieldAsBox: false,
      borderRadius: BorderRadius.circular(10),
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }
}
