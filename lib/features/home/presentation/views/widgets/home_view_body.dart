
import 'package:chatter_chat_app/core/utils/extensions.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_chat_section_header.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_chats_list_view.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_status_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:EdgeInsets.symmetric(vertical: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: HomeViewAppBar()),
            SliverToBoxAdapter(
              child: 20.verticalSizedBox,
            ),
            const SliverToBoxAdapter(child: HomeViewStatusSection()),
            const SliverToBoxAdapter(
              child: HomeViewChatSectionHeader(),
            ),
            const SliverToBoxAdapter(
              child: HomeViewChatsListView(),
            )
          ],
        ),
      ),
    );
  }
}
