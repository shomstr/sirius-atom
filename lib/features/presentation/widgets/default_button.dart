import 'package:flutter/material.dart';
import 'package:sirius/utils/colors.dart';

class DefaultButton extends StatelessWidget {
    final String text;
    final double fontSize;

    const DefaultButton({
        super.key,
        required this.text,
        this.fontSize = 20
    });

    @override
    Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(
            backgroundColor: ButtonsColor,
            textStyle: TextStyle(fontSize: fontSize)
        );

    return ElevatedButton(
        style: style,
        onPressed: () {},
        child: Text(text),
    );
  }
}