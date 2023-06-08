import 'package:flutter/material.dart';
class BoxImage extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String img;
  final Widget child;

  const BoxImage({
    super.key,
    required this.child,
    required this.img,
    required this.backgroundColor,
    this.height = 210,
    this.width = 177,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(img),
        ),
      ),
      child: child,
    );
  }
}
