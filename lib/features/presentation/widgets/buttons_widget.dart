import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height; 
  final double width; 
  final EdgeInsetsGeometry padding;
  final Widget? page; 

  const DefaultButton({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.height = 50,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(8.0), 
    this.page, 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ButtonsColor, // Цвет кнопки
        textStyle: TextStyle(
          fontSize: fontSize,
          color: Colors.white, // Цвет текста кнопки
        ),
        minimumSize: Size(width, height), 
        padding: padding,
      ),
      onPressed: page != null ? () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
      } : null, // Если page не указана, кнопка неактивна
      child: Text(text, style: TextStyle(color: Colors.white)), 
    );
  }
}