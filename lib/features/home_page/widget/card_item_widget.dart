import 'package:finance_app_v1/core/styling/app_assets.dart';
import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItemWidget extends StatelessWidget {
  final Color? backgroundCardColor;
  final String? cardType;
  final String? balance;
  final String? cardNumber;
  final String? validDate;
  const CardItemWidget({
    super.key,
    this.backgroundCardColor,
    this.cardType,
    this.balance,
    this.cardNumber,
    this.validDate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 270.h,
          decoration: BoxDecoration(
            color: backgroundCardColor ?? AppColor.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),

          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const HeightSpace(height: 24),
          //     Text(
          //       cardType ?? 'X-Card',
          //       style: AppStyles.black16w600Styles.copyWith(
          //         fontSize: 14.sp,
          //         fontWeight: FontWeight.w500,
          //         color: Color(0xffFDFDFD),
          //       ),
          //     ),
          //     const HeightSpace(height: 57),
          //     Text(
          //       'Balance',
          //       style: AppStyles.black16w600Styles.copyWith(
          //         fontSize: 12.sp,
          //         fontWeight: FontWeight.w700,
          //         color: Color(0xffFDFDFD),
          //       ),
          //     ),
          //     const HeightSpace(height: 8),
          //     Text(
          //       balance ?? '',
          //       style: AppStyles.black16w600Styles.copyWith(
          //         fontSize: 24.sp,
          //         fontWeight: FontWeight.w300,
          //         color: AppColor.whiteColor,
          //       ),
          //     ),
          //     const HeightSpace(height: 25),
          //     Row(
          //       children: [
          //         Text(
          //           '****  ${cardNumber ?? ''}',
          //           style: AppStyles.black16w600Styles.copyWith(
          //             fontSize: 16.sp,
          //             fontWeight: FontWeight.w500,
          //             color: Color(0xffFDFDFD),
          //           ),
          //         ),
          //         const WidthSpace(width: 41),
          //         Text(
          //           validDate ?? '',
          //           style: AppStyles.black16w600Styles.copyWith(
          //             fontSize: 12.sp,
          //             color: AppColor.whiteColor,
          //             fontWeight: FontWeight.w500,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),

        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 100.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 100.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 170.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 170.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          left: 24.w,
          top: 24.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardType ?? 'X-Card',
                style: AppStyles.black16w600Styles.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFDFDFD),
                ),
              ),
              const HeightSpace(height: 57),
              Text(
                'Balance',
                style: AppStyles.black16w600Styles.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFDFDFD),
                ),
              ),
              const HeightSpace(height: 10),
              Text(
                balance ?? '',
                style: AppStyles.black16w600Styles.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFDFDFD),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          right: 24.w,
          bottom: 26.h,
          child: Text(
            validDate ?? '',
            style: AppStyles.black16w600Styles.copyWith(
              fontSize: 12.sp,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Positioned(
          left: 24.w,
          bottom: 26.h,
          child: Text(
            '****  ${cardNumber ?? ''}',
            style: AppStyles.black16w600Styles.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xffFDFDFD),
            ),
          ),
        ),
      ],
    );
  }
}
