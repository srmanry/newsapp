import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    this.height,
    this.color,
    this.text,
    this.textStyle,
  });
  final Color? color;
  final Widget? height;
  final Text? text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: text,),
    );
  }
}
