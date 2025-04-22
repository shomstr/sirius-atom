/*
  Виджет ошибки
*/

import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;

  const ErrorMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    if (message.isEmpty) return const SizedBox.shrink();

    return Text(
      message,
      style: TextStyle(
        color: Theme.of(context).colorScheme.error // TODO: replace with container or smth
      ),
    );
  }
}