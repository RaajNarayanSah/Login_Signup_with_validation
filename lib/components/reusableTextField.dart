import 'package:flutter/material.dart';

class ReusabletextField extends StatelessWidget {
  ReusabletextField(
      {super.key, required this.hintText, required this.icon, this.validator});
  String hintText;
  IconData icon;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
          hoverColor: Colors.redAccent,
          focusColor: Colors.redAccent,
          prefixIconColor: Colors.redAccent,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)),
          // disabledBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.redAccent)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)),
          hintText: hintText,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
