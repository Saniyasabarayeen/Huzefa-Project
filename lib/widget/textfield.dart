import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomTextField extends StatelessWidget {
  String? labeltext;
  IconData? suffix;
  TextEditingController controller;
 EdgeInsetsGeometry contentpadding;
  bool obsecureatext;
  CustomTextField({this.labeltext, required this.suffix,required this.obsecureatext,required this.controller,required this.contentpadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter $labeltext";
        }
       else {
          return null;
        }
      },
      obscureText: obsecureatext,
      decoration: InputDecoration(
        contentPadding: contentpadding,
          labelText: labeltext,
          suffixIcon: Icon(suffix),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          )
      ),
    );
  }


}
