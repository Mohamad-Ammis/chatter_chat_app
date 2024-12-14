// ignore_for_file: prefer_const_constructors

import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/manger/theme_cubit.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_get_started_button.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_info_text.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_title_section.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_view_background_image.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(kMainPagePadding),
          // width: MediaQuery.sizeOf(context).width,
          decoration: pref.getBool('isDarkMode') == true
              ? onBoardingViewBackgroundImage()
              : null,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OnBoardingTitleSection(),
                40.verticalSizedBox,
                OnBoardingImage(),
                50.verticalSizedBox,
                const OnBoardingInfoText(),
                const Spacer(),
                const OnBoardingGetStartedButton(),
                const Spacer()
              ],
            ),
          ),
        );
      },
    );
  }
}
