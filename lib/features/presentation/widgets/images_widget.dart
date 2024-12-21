import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final double top;
  final double left;

  const LogoWidget({
    Key? key,
    required this.imagePath,
    this.width = 10.0,
    this.height = 10.0,
    this.top = 0.0,
    this.left = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: width,
        maxHeight: height,
      ),
      child: Stack(
        children: [
          Positioned(
            top: top,
            left: left,
            child: Image.asset(
              imagePath,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}