import 'package:flutter/material.dart';

class CreateStorySubmitTextButton extends StatelessWidget {
  const CreateStorySubmitTextButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(999)),
        child: Center(
            child: Icon(
          Icons.send_rounded,
          color: Colors.white,
          size: 20,
        )),
      ),
    );
  }
}
