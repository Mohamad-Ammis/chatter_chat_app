import 'package:chatter_chat_app/core/manger/cubit/navigation_cubit.dart';
import 'package:chatter_chat_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return context
              .read<NavigationCubit>()
              .views[context.read<NavigationCubit>().currentIndex];
        },
      ),
    );
  }
}
