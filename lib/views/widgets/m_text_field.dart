import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class mTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  const mTextField({super.key, this.hintText, this.controller, this.keyboardType, this.obscureText, this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        label: Text(hintText??'')
      ),
      keyboardType: keyboardType,
      obscureText: obscureText??false,

    );
  }
}
