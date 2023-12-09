import 'package:flutter/material.dart';

class CustomTextfild extends StatelessWidget {
  final TextEditingController? controller;
  final String? fildname;
  final String? hinText;
  final Widget? prifixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final bool? obscureCharacter;
  final Color? focusColor;
  final Widget? outlineborder;

  const CustomTextfild(
      {super.key,
      this.fildname,
      this.hinText,
      this.prifixIcon,
      this.suffixIcon,
      this.controller,
      this.textInputType,
      this.obscureCharacter,
      this.outlineborder,
      this.focusColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFFFFFFF),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFFFFFFFF),
                  blurRadius: 0,
                  //blurStyle: BlurStyle.inner,
                  spreadRadius: 1)
            ]),
        child: TextFormField(
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
              focusColor: focusColor,
              // fillColor: Colors.green,
              //  focusColor: Colors.white,
              // hoverColor: Colors.white,
              hintText: hinText,
              hintStyle: const TextStyle(fontSize: 14),
              prefixIcon: prifixIcon,
              suffixIcon: suffixIcon,
              iconColor: Colors.black,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color(0xFFFFFFFF),
                  width: 0.0,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFFFFFFF),
                ),
              )),
        ),
      ),
    );
  }
}
