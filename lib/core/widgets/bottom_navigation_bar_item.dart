import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/manger/cubit/navigation_cubit.dart';
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNaviagationBarItem extends StatelessWidget {
  const BottomNaviagationBarItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.index,
  });
  final bool isSelected;
  final IconData icon;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<NavigationCubit>().changePage(index: index);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                width: context.read<NavigationCubit>().currentIndex == index
                    ? 10
                    : 0,
                height: 5,
                decoration: BoxDecoration(
                    color: pref.getBool('isDarkMode') == true
                        ? kPrimaryDarkColor
                        : Colors.black,
                    borderRadius: BorderRadius.circular(999)),
                duration: Duration(
                  milliseconds: 300,
                ),
              ),
              4.verticalSizedBox,
              Icon(
                icon,
                color: context.read<NavigationCubit>().currentIndex == index
                    ? null
                    : Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color!
                        .withOpacity(.5),
              ),
            ],
          ),
        );
      },
    );
  }
}
