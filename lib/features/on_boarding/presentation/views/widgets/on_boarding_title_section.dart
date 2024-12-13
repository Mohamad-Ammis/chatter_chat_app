import 'package:chatter_chat_app/core/manger/theme_cubit.dart';
import 'package:chatter_chat_app/core/utils/app_styles.dart';
import 'package:chatter_chat_app/core/widgets/theme_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingTitleSection extends StatelessWidget {
  const OnBoardingTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(
          'Chatter',
          style: Styles.style36Bold,
        ),
        BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return ThemeToggleButton(
              isDarkMode: themeMode == ThemeMode.dark,
              onToggle: () {
                context.read<ThemeCubit>().toggleTheme();
              },
            );
          },
        ),
      ],
    );
  }
}
