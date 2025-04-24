/*
  Создание стилизованных кнопок с выделением
  
  Аргументы конструктора:
    №  | Имя          | Тип аргумента      | Описание
    1  | text         | String             | Текст кнопки
    2  | toggled      | bool               | Выделена кнопка или нет
    2  | margin       | EdgeInsetsGeometry | Отступ снаружи
    3  | onPressed    | voidCallback       | Коллбэк при нажатии на кнопку
*/

import 'package:flutter/material.dart';

class DefaultUnderlinedButton extends StatefulWidget {
  final String text;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onPressed;
  final bool toggled;

  const DefaultUnderlinedButton ({
    super.key,
    required this.text,
    this.toggled = false,
    this.margin = const EdgeInsets.all(0),
    this.onPressed,
  });

  @override
  DefaultUnderlinedButtonState createState() => DefaultUnderlinedButtonState();
}

class DefaultUnderlinedButtonState extends State<DefaultUnderlinedButton> { // TODO: add more settings
  late String text;
  late EdgeInsetsGeometry margin;
  late Color textColor;
  late bool toggled;
  BoxDecoration? decoration;
  VoidCallback? onPressed;

  late Color on;
  late Color off;
  BoxDecoration? defaultDecoration;

  @override
  void initState() {
    super.initState();

    toggled = widget.toggled;
    text = widget.text;
    margin = widget.margin;
    onPressed = widget.onPressed;
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    on = colorScheme.onPrimary;
    off = colorScheme.secondary;

    defaultDecoration = BoxDecoration(
        border: Border(
        bottom: BorderSide(
          width: 2,
          color: colorScheme.outline,
        ),
      ),
    );

    textColor = toggled ? on : off;
    decoration = toggled ? defaultDecoration : null;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.only(bottom: 3),
          decoration: decoration,
        child: Text(
          text,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: textColor,
          ),
        )
      ),
    );
  }

  void toggle() {
    setState(() {
      toggled = !toggled;
    });
  }
}