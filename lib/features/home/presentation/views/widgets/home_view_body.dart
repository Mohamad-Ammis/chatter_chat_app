import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/app_images.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: HomeViewAppBar()),
        SliverToBoxAdapter(
          child: 20.verticalSizedBox,
        ),
        const SliverToBoxAdapter(child: HomeViewStatusSection()),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kMainPagePadding),
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(999)),
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
                          Text(
                            'Mohamad Ammis',
                            style: Styles.style14Bold,
                          ),
                          Text(
                            '12:59 Am',
                            style: Styles.style12Medium
                                .copyWith(color: kSubTitleColor),
                          ),
                        ],
                      ),
                      6.verticalSizedBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Okay Sure',
                            style: Styles.style12Medium
                                .copyWith(color: kSubTitleColor),
                          ),
                          Icon(
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
          ),
        )
      ],
    );
  }
}
