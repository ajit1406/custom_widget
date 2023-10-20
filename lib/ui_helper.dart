import 'package:flutter/material.dart';

class UIHelper{

  static InputDecoration mDecoration({
    required String mLabel,
    required String hint,
    double bRadius = 21,
    Color bColor = Colors.black,
    double bWidth = 1,
  }){
    return InputDecoration(
      label: Text(mLabel),
      hintText: hint,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(bRadius),
          borderSide: BorderSide(
              color: bColor,
              width: bWidth
          )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(bRadius),
        borderSide: BorderSide(
          color: bColor,
          width: bWidth
        )
      )
    );
  }

}