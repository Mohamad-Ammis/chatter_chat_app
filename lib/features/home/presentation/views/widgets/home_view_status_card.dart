import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_card_image.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_card_title.dart';
import 'package:flutter/material.dart';

class HomeViewStatusCard extends StatelessWidget {
  const HomeViewStatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: Theme.of(context).primaryColor)),
          child: const HomeViewStatusCardImage(),
        ),
        4.verticalSizedBox,
        const HomeViewStatusCardTitle(
          title: 'Mohamad Ammis',
        )
      ],
    );
  }
}
