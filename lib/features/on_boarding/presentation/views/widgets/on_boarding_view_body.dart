import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_get_started_button.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_info_text.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_title_section.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/widgets/on_boarding_view_background_image.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kMainPagePadding),
      // width: MediaQuery.sizeOf(context).width,
      decoration: pref.getBool('isDarkMode') == true
          ? onBoardingViewBackgroundImage()
          : null,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnBoardingTitleSection(),
            40.verticalSizedBox,
            OnBoardingImage(),
            50.verticalSizedBox,
            OnBoardingInfoText(),
            Spacer(),
            OnBoardingGetStartedButton(),
            Spacer()
          ],
        ),
      ),
    );
  }
}
