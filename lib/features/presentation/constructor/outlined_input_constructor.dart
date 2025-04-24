/*
  Создание стилизованных строковых инпутов
  
  Аргументы конструктора:
    №  | Имя          | Тип аргумента      | Описание
    1  | hint         | String             | Текст подсказки

*/

import 'package:flutter/material.dart';

class DefaultOutlinedInput extends StatefulWidget {
  final String? hint;

  const DefaultOutlinedInput({
    super.key,
    this.hint,
  });

  @override
  DefaultOutlinedInputState createState() => DefaultOutlinedInputState();
}

class DefaultOutlinedInputState extends State<DefaultOutlinedInput> {
  late String? hint;
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    hint = widget.hint;
  }

  void clear() {
    controller.clear();
  }

  void setHint(String hint) {
    setState(() {
      this.hint = hint;
    });
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextField(
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
        color: colorScheme.secondary,
      ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.outline,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorScheme.outlineVariant,
          ),
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: colorScheme.secondary,
        ),
      ),
      controller: controller,
    );
  }
}