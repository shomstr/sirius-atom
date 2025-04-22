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
    8  | borderRadius | BorderRadius       | Закругление кнопки
    9  | page         | Widget             | Страница для переадресации при нажатии
    10 | onPressed    | voidCallback       | Коллбэк при нажатии на кнопку (важнее чем переадресация)
*/

import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final double top;
  final double left;
  final BorderRadius borderRadius;
  final Widget? page;
  final VoidCallback? onPressed; 

  const DefaultButton({
    super.key,
    required this.text,
    this.fontSize = 30,
    this.height = 50,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(8),
    this.top = 0,
    this.left = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)), // Вызываем BorderRadius.all а не BorderRadius.circular, чтобы было константой
    this.page,
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: EdgeInsets.only(top: top, left: left),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          backgroundColor: colorScheme.primaryContainer,
          textStyle: TextStyle(
            fontSize: fontSize,
            color: colorScheme.onPrimaryContainer,
          ),
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide(
              color: colorScheme.outline,
              width: 1,
            ),
          ),
        ),
        // Если нет коллбэк функции onPressed, то пытаемся переадресовать на страницу page
        onPressed: onPressed ?? (page != null ? () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
        } : null),
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          )
        ),
      ),
    );
  }
}