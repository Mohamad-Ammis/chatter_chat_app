
import 'package:chatter_chat_app/core/manger/theme_cubit.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CornerDecorationCircul extends StatelessWidget {
  const CornerDecorationCircul({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return Positioned(
          right: 0,
          child: Container(
            width: MediaQuery.sizeOf(context).width / 4 * 3,
            height: MediaQuery.sizeOf(context).height / 4 * 1.2,
            decoration: BoxDecoration(
                color: pref.getBool('isDarkMode') == true
                    ? Colors.white.withOpacity(.01)
                    : const Color.fromARGB(255, 245, 246, 250),
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(999))),
          ),
        );
      },
    );
  }
}
