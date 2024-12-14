import 'package:chatter_chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
// GoRouter configuration
  static const  String kLoginPath = '/login_view';
  static final router = GoRouter(routes: [
    GoRoute(path:'/',builder: (context, state) => const OnBoardingView(), ),
    GoRoute(path:kLoginPath,builder: (context, state) => const LoginView(), )
  ]);
}
