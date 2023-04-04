import 'package:flutter/material.dart';

text(
    {required text,
    required double fontSize,
    required fontWeight,
    required color}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
  );
}

textfield({required icon, required hintText, required controler}) {
  return TextField(
    controller: controler,
    decoration: InputDecoration(
      prefixIcon: icon,
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

var backgroundColor = const Color(0xff0D986A);
