import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.child,
    this.radius = 400,
    this.backgroundColor = TColors.white,
  });

  final double width;
  final double height;
  final double padding;
  final Widget? child;
  final double radius;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
