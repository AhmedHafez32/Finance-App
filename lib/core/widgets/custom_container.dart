import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomContainer extends StatelessWidget {
  final void Function()? onTap;
  final double? width;
  final double? height;
  final Widget child;
  const CustomContainer({
    super.key,
    this.onTap,
    this.width,
    this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? GoRouter.of(context).pop,
      child: Container(
        width: width ?? 41.w,
        height: height ?? 41.h,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE8ECF4), width: 1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: child,
      ),
    );
  }
}
