import 'package:finance_app_v1/core/routing/app_routes.dart';
import 'package:finance_app_v1/features/auth/create_new_password_screen.dart';
import 'package:finance_app_v1/features/auth/forget_password_screen.dart';
import 'package:finance_app_v1/features/auth/login_screen.dart';
import 'package:finance_app_v1/features/auth/register_screen.dart';
import 'package:finance_app_v1/features/main_screen/main_screen.dart';
import 'package:finance_app_v1/features/onBoarding/on_boarding_screen.dart';
import 'package:finance_app_v1/features/verify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/password_changed_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.mainScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) {
          return const OnBoardingScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) {
          return const MainScreen();        },
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) {
          return const RegisterScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) {
          return const ForgetPassword();
        },
      ),
      GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) {
          return const CreateNewPasswordScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.passwordChangedScreen,
        name: AppRoutes.passwordChangedScreen,
        builder: (context, state) {
          return const PasswordChangedScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.verifyOTPScreen,
        name: AppRoutes.verifyOTPScreen,
        builder: (context, state) {
          return VerifyOtpScreen();
        },
      ),
    ],
  );
}
