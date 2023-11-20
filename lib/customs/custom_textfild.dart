import 'package:flutter/material.dart';

class CustomTextfild extends StatelessWidget {
  final TextEditingController? controller;
  final String? hinText;
  final Widget? prifixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final bool? obscureCharacter;
  final Widget? outlineborder;

  const CustomTextfild(
      {super.key,
      this.hinText,
      this.prifixIcon,
      this.suffixIcon,
      this.controller,
      this.textInputType,
      this.obscureCharacter,
      this.outlineborder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.white,
            // hoverColor: Colors.white,
            hintText: hinText,
            hintStyle: const TextStyle(fontSize: 14),
            prefixIcon: prifixIcon,
            suffixIcon: suffixIcon,
            iconColor: Colors.black,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.green,
                width: 1.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
              ),
            )),
      ),
    );
  }
}
