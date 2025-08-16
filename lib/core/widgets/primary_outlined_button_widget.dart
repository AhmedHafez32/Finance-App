import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;
  final Color? textColor;
  final void Function() onPress;
  const PrimaryOutlinedButtonWidget({
    super.key,
    required this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.fontSize,
    this.textColor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
       // backgroundColor: buttonColor ?? AppColor.primaryColor,
        side: BorderSide(color: borderColor ?? AppColor.primaryColor, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor ?? AppColor.primaryColor,
          // fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
