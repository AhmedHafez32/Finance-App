import 'package:flutter/material.dart';


import '../styling/app_color.dart';
import '../styling/app_style.dart';

class CustomButtonText extends StatelessWidget {

  final void Function()? onTap;
  final String? blueText;
  final String? blackText;


  const CustomButtonText({super.key, this.onTap, this.blueText, this.blackText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: blueText,
            style: AppStyles.black16w600Styles.copyWith(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: blackText,
                style: AppStyles.black16w600Styles.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
