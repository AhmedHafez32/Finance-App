import 'package:finance_app_v1/core/styling/app_assets.dart';

import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/custom_button_text.dart';
import 'package:finance_app_v1/core/widgets/custom_container.dart';
import 'package:finance_app_v1/core/widgets/primary_button_widget.dart';

import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:finance_app_v1/features/verify_otp/widget/custom_pin_code.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyOtpScreen extends StatelessWidget {
   VerifyOtpScreen({super.key});

 final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpace(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomContainer(
                    child: Image.asset(
                      AppAssets.arrowBack,
                      width: 19.w,
                      height: 19.h,
                    ),
                  ),
                ),
                const HeightSpace(height: 28),
               Text(
                  'OTP Verification',
                  style: AppStyles.primaryHeadLineStyles,
                ),
                const HeightSpace(height: 10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    'Enter the verification code we just sent on your email address.',
                    style: AppStyles.subTitlesStyles,
                  ),
                ),
                const HeightSpace(height: 32),
                CustomPinCode(),
                const HeightSpace(height: 38),
                PrimaryButtonWidget(buttonText: 'Verify', onPress: () {}),
                Spacer(),
                CustomButtonText(blueText: 'Didn’t received code? ',blackText: 'Resend',),
                const HeightSpace(height: 26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
