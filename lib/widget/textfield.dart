import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? labeltext;
   IconData? suffix;
  CustomTextField({this.labeltext, required this.suffix});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText:labeltext,
          suffixIcon: Icon(suffix),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          )
      ),
    );
  }
}
