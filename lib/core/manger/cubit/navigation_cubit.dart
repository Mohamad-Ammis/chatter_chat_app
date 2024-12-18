import 'package:bloc/bloc.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/register_view.dart';
import 'package:chatter_chat_app/features/home/presentation/views/home_view.dart';
import 'package:chatter_chat_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);
  int currentIndex = 0;
  List<Widget> views = const [HomeViewBody(), RegisterView(), LoginView()];
  changePage({required int index}) {
    currentIndex = index;
    emit(index);
  }
}
