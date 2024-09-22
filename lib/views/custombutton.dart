import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText_,
    required this.onPressed_,
  });

  final String btnText_;
  final Function() onPressed_;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
