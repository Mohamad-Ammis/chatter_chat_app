import 'package:chatter_chat_app/constans.dart';
import 'package:chatter_chat_app/core/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(kMainPagePadding, 0, kMainPagePadding, 16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNaviagationBarItem(
            isSelected: true,
            icon: Icons.home,
            index: 0,
          ),
          BottomNaviagationBarItem(
            isSelected: false,
            icon: Icons.search,
            index: 1,
          ),
          BottomNaviagationBarItem(
            isSelected: false,
            icon: Icons.person,
            index: 2,
          ),
        ],
      ),
    );
  }
}
