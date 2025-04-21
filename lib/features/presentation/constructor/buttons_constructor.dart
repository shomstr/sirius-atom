/*
  Создание стилизованных кнопок
  
  Аргументы конструктора:
    №  | Имя          | Тип аргумента      | Описание
    1  | text         | String             | Текст кнопки
    2  | fontSize     | double             | Размер текста кнопки
    3  | height       | double             | Высота кнопки
    4  | width        | double             | Ширина кнопки
    5  | padding      | EdgeInsetsGeometry | Отступ внутри от текста
    6  | top          | double             | Отступ сверху
    7  | left         | double             | Отступ слева
    8  | borderRadius | double             | Закругление кнопки
    9  | page         | Widget             | Страница для переадресации при нажатии
    10 | onPressed    | voidCallback       | Коллбэк при нажатии на кнопку (важнее чем переадресация)
*/

import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart'; 

class DefaultButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final double top;
  final double left;
  final double borderRadius;
  final Widget? page;
  final VoidCallback? onPressed; 

  const DefaultButton({
    super.key,
    required this.text,
    this.fontSize = 20,
    this.height = 50,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(8),
    this.top = 0,
    this.left = 0,
    this.borderRadius = 8,
    this.page,
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
            color: Colors.white.withAlpha(128), // Прозрачность наполовину
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
          maximumSize: Size(width, height),
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
        ),
        // Если нет коллбэк функции onPressed, то пытаемся переадресовать на страницу page
        onPressed: onPressed ?? (page != null ? () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
        } : null),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}