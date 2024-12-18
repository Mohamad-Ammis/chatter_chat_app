import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class HomeViewChatCard extends StatelessWidget {
  const HomeViewChatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(999)),
            clipBehavior: Clip.hardEdge,
            width: 60,
            height: 60,
            child: Image.asset(
              Assets.imagesTest,
              fit: BoxFit.cover,
            ),
          ),
          20.horizontalSizedBox,
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        'Mohamad Ammis ',
                        style: Styles.style14Bold,
                      ),
                    ),
                    Text(
                      '12:59 Am',
                      style:
                          Styles.style12Medium.copyWith(color: kSubTitleColor),
                    ),
                  ],
                ),
                6.verticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.2,
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        'Okay Sure',
                        style: Styles.style12Medium
                            .copyWith(color: kSubTitleColor),
                      ),
                    ),
                    const Icon(
                      Icons.check,
                      size: 16,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
