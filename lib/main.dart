import 'package:chatter_chat_app/core/manger/theme_cubit.dart';
import 'package:chatter_chat_app/core/utils/app_themes.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences pref;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pref = await SharedPreferences.getInstance();
  final themeCubit = ThemeCubit();
  await themeCubit.loadTheme();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(BlocProvider(
    create: (context) => themeCubit,
    child: const ChatterChatApp(),
  ));
}

class ChatterChatApp extends StatelessWidget {
  const ChatterChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          home: OnBoardingView(),
        );
      },
    );
  }
}
