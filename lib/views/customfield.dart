import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller_,
    required this.isPassword_,
    required this.error_,
    required this.hintText_,
    required this.labelText_,
  });

  final TextEditingController controller_;
  final bool isPassword_;
  final String error_;
  final String hintText_;
  final String labelText_;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
