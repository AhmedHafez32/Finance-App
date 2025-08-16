import 'package:finance_app_v1/core/routing/app_routes.dart';
import 'package:finance_app_v1/core/styling/app_assets.dart';
import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.sticker),
                const HeightSpace(height: 38),
                SizedBox(
                  width: 232.w,
                  child: Text(
                    'Password Changed!',
                    style: AppStyles.primaryHeadLineStyles,
                    textAlign: TextAlign.center,
                  ),
                ),
                const HeightSpace(height: 8),
                SizedBox(
                  width: 226.w,
                  child: Text(
                    'Your password has been changed successfully.',
                    style: AppStyles.subTitlesStyles,
                    textAlign: TextAlign.center,
                  ),
                ),
                const HeightSpace(height: 40),
                PrimaryButtonWidget(
                  buttonText: 'Back to Login',
                  onPress: () {
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}