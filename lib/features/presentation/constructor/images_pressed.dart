import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final double top;
  final double left;
  final double borderRadius;
  final VoidCallback? onTap; 

  const LogoWidget({
    super.key,
    required this.imagePath,
    this.width = 10.0,
    this.height = 10.0,
    this.top = 0.0,
    this.left = 0.0,
    this.borderRadius = 8.0,
    this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onTap, 
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width,
          maxHeight: height,
        ),
        child: Stack(
          children: [
            Positioned(
              top: top,
              left: left,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Image.asset(
                  imagePath,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
