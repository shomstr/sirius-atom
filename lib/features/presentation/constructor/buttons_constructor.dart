import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart'; 

class DefaultButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final double width;
  final double left;
  final double top;
  final EdgeInsetsGeometry padding;
  final Widget? page;
  final double borderRadius;
  final VoidCallback? onPressed; 

  const DefaultButton({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.height = 50,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(8.0),
    this.top = 0.0,
    this.left = 0.0,
    this.page,
    this.borderRadius = 8.0,
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top, left: left),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ButtonsColor,
          textStyle: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
          minimumSize: Size(width, height),
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
        ),
        onPressed: onPressed ?? (page != null ? () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
        } : null),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}