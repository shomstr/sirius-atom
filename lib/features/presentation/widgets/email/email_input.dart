import 'package:flutter/material.dart';
import 'package:sirius/core/error_messages.dart';

class EmailInputWithValidation extends StatefulWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final ValueChanged<String>? onSubmitted;

  const EmailInputWithValidation({
    super.key,
    required this.controller,
    this.errorMessage,
    this.onSubmitted,
  });

  @override
  _EmailInputWithValidationState createState() => _EmailInputWithValidationState();
}

class _EmailInputWithValidationState extends State<EmailInputWithValidation> {
  String _errorMessage = '';

  @override
  void didUpdateWidget(covariant EmailInputWithValidation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.errorMessage != oldWidget.errorMessage) {
      setState(() {
        _errorMessage = widget.errorMessage ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: widget.controller,
          style: TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            labelText: 'Почта',
            hintText: 'Введите ваш email',

            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            if (_errorMessage.isNotEmpty) {
              setState(() {
                _errorMessage = '';
              });
            }
          },
          onFieldSubmitted: widget.onSubmitted,
        ),
        ErrorMessage(message: _errorMessage), 
      ],
    );
  }
}