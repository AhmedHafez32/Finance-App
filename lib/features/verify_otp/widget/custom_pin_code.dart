import 'package:finance_app_v1/core/styling/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/styling/app_color.dart';

class CustomPinCode extends StatefulWidget {
  const CustomPinCode({super.key});

  @override
  State<CustomPinCode> createState() => _CustomPinCodeState();
}

class _CustomPinCodeState extends State<CustomPinCode> {

  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      controller: pinCodeController,
      enableActiveFill: true,
      textStyle: AppStyles.primaryHeadLineStyles.copyWith(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700
      ),
      pinTheme: PinTheme(
        fieldWidth: 70,
        fieldHeight: 60,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.r),
        activeColor: AppColor.blackColor,
        activeFillColor: AppColor.whiteColor,
        selectedColor: AppColor.primaryColor,
        selectedFillColor: AppColor.whiteColor,
        inactiveColor: AppColor.grayColor,
        inactiveFillColor: Color(0xffF7F8F9),
        borderWidth: 0.5,
      ),
    );
  }
}
