import 'package:finance_app_v1/core/routing/app_routes.dart';
import 'package:finance_app_v1/core/styling/app_assets.dart';
import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';
import 'package:finance_app_v1/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              AppAssets.onBorder,
              fit: BoxFit.fitWidth,
              height: 570.h,
              width: double.infinity,
            ),
            HeightSpace(height: 21.h),
            PrimaryButtonWidget(
              buttonColor: AppColor.primaryColor,
              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
              buttonText: 'Login',
            ),
            HeightSpace(height: 15.h),
            PrimaryOutlinedButtonWidget(
              buttonText: 'Register',
              onPress: () {
                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
              },
            ),
            HeightSpace(height: 46.h),
            Text(
              'Continue as a guest',
              style: AppStyles.black16w600Styles.copyWith(
                color: Color(0xff202955),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
