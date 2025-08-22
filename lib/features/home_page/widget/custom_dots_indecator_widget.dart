import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicatorWidget extends StatefulWidget {
  late int currentPageIndex;
  CustomDotsIndicatorWidget({super.key, required this.currentPageIndex});

  @override
  State<CustomDotsIndicatorWidget> createState() => _CustomDotsIndicatorWidgetState();
}

class _CustomDotsIndicatorWidgetState extends State<CustomDotsIndicatorWidget> {



  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: widget.currentPageIndex.toDouble(),
      decorator: DotsDecorator(
        spacing: EdgeInsets.symmetric(horizontal: 4),
        color: Color(0xffE3E9ED),
        size: const Size.square(8.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
