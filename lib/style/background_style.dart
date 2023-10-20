import 'package:flutter/material.dart';

BoxDecoration myBoxDecoration = BoxDecoration(
  gradient: const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Colors.deepPurple,
      Colors.redAccent,
    ],
  ),
  borderRadius: BorderRadius.circular(10),
);
