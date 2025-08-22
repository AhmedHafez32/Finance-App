import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app_v1/core/styling/app_color.dart';
import 'package:finance_app_v1/core/widgets/spacing_widgets.dart';
import 'package:finance_app_v1/features/home_page/widget/custom_dots_indecator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_item_widget.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentPageIndex = index;
              });
            },
            height: 270.h,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            enlargeFactor: 0.05,
          ),

          items: [CardItemWidget(
            cardNumber: '3434',
            validDate: '12/25',
            balance: '23400 EG',
          ), CardItemWidget(
            backgroundCardColor: Color(0xff3853ff),
            cardNumber: '6892',
            cardType: 'M-Card',
            validDate: '03/29',
            balance: '216000 EG',
          ), CardItemWidget(
            backgroundCardColor: Color(0xff272885),
            cardNumber: '5428',
            cardType: 'Y-Card',
            validDate: '06/27',
            balance: '1000000 EG',
          )],
        ),
        const HeightSpace(height: 16),
        CustomDotsIndicatorWidget(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
