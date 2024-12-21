
import 'package:flutter/material.dart';

class CreateStoryHeaderIcon extends StatelessWidget {
  const CreateStoryHeaderIcon({
    super.key,
    required this.icon,
    this.onTap,
  });
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.black26, borderRadius: BorderRadius.circular(999)),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
