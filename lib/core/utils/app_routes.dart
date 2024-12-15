import 'package:chatter_chat_app/features/auth/presentation/views/login_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/register_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/reset_password_verfication_view.dart';
import 'package:chatter_chat_app/features/auth/presentation/views/reset_password_view.dart';
import 'package:chatter_chat_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
// GoRouter configuration
  static const  String kLoginPath = '/login_view';
  static const  String kRegisterPath = '/register_view';
  static const  String kResetPasswordPath = '/reset_password_view';
  static const  String kResetPasswordVerficationPath = '/reset_password_verfication_view';
  static final router = GoRouter(routes: [
    GoRoute(path:'/',builder: (context, state) => const OnBoardingView(), ),
    GoRoute(path:kLoginPath,builder: (context, state) => const LoginView(), ),
    GoRoute(path:kRegisterPath,builder: (context, state) => const RegisterView(), ),
    GoRoute(path:kResetPasswordPath,builder: (context, state) => const ResetPasswordView(), ),
    GoRoute(path:kResetPasswordVerficationPath,builder: (context, state) => const ResetPasswordVerficationView(), ),
  ]);
}
