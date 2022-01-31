import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomTextField extends StatelessWidget {
  String? labeltext;
  IconData? suffix;
  TextEditingController controller;
  EdgeInsetsGeometry contentpadding;
  TextStyle style;
  bool obsecureatext;

  CustomTextField(
      {this.labeltext,
      required this.suffix,
      required this.obsecureatext,
      required this.controller,
      required this.contentpadding,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter $labeltext";
        } else {
          return null;
        }
      },
      obscureText: obsecureatext,
      decoration: InputDecoration(
        fillColor: Colors.white,
          filled: true,
          contentPadding: contentpadding,
          labelText: labeltext,
          suffixIcon: Icon(suffix),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
    );
  }
}
