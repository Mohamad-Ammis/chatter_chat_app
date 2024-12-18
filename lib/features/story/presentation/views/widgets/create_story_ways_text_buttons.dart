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
          onTap: () {
          },
          child: Text(
            "Gallery",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 16,
        ),
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
