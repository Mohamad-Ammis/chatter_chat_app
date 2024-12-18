import 'package:chatter_chat_app/core/manger/cubit/navigation_cubit.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/register_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/reset_password_verfication_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/update_password_view.dart';
import 'package:chatter_chat_app/features/home/presentation/views/home_view.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:chatter_chat_app/features/story/presentation/manger/cubit/story_text_decoration_cubit.dart';
import 'package:chatter_chat_app/features/story/presentation/manger/story_color_cubit/create_story_color_cubit.dart';
import 'package:chatter_chat_app/features/story/presentation/views/create_story_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
// GoRouter configuration
  static const String kLoginPath = '/login_view';
  static const String kRegisterPath = '/register_view';
  static const String kResetPasswordPath = '/reset_password_view';
  static const String kResetPasswordVerficationPath =
      '/reset_password_verfication_view';
  static const String kUpdatePasswordPath = '/update_password_view';
  static const String kHomeViewPath = '/home_view';
  static const String kCreateStoryViewPath = '/create_story_view';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => OnBoardingView()),
    GoRoute(
      path: kLoginPath,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: kRegisterPath,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: kResetPasswordPath,
      builder: (context, state) => const ResetPasswordView(),
    ),
    GoRoute(
      path: kResetPasswordVerficationPath,
      builder: (context, state) => const ResetPasswordVerficationView(),
    ),
    GoRoute(
      path: kUpdatePasswordPath,
      builder: (context, state) => const UpdatePasswordView(),
    ),
    GoRoute(
      path: kHomeViewPath,
      builder: (context, state) => BlocProvider(
        create: (context) => NavigationCubit(),
        child: const HomeView(),
      ),
    ),
    GoRoute(
      path: kCreateStoryViewPath,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
          create: (context) => CreateStoryColorCubit(),
        ),
        BlocProvider(
          create: (context) => StoryTextDecorationCubit(),
        ),
        ],
        child: CreateStoryView(),
      ),
    )
  ]);
}
