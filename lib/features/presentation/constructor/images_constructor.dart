/*
  Создание стилизованных нажиамемых картинок
  
  Аргументы конструктора:
    № | Имя          | Тип аргумента      | Описание
    1 | imagePath    | String             | Путь к картинке
    2 | height       | double             | Высота картинки
    3 | width        | double             | Ширина картинки
    4 | top          | double             | Отступ сверху
    5 | left         | double             | Отступ слева
    6 | borderRadius | double             | Закругление картинки
    7 | page         | Widget             | Страница для переадресации при нажатии
    8 | onPressed    | voidCallback       | Коллбэк при нажатии на картинку (важнее чем переадресация)
*/

import 'package:flutter/material.dart';

class DefaultImage extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final double top;
  final double left;
  final double borderRadius;
  final Widget? page;
  final VoidCallback? onPressed; 

  const DefaultImage({
    super.key,
    required this.imagePath,
    this.height = 10,
    this.width = 10,
    this.top = 0,
    this.left = 0,
    this.borderRadius = 8,
    this.page,
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onPressed ?? (page != null ? () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page!));
      } : null),
      child: Container(
        margin: EdgeInsets.only(top: top, left: left),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.asset(
            imagePath,
            width: width,
            height: height,
          ),
        ),
      )
    );
  }
}
