import 'package:flutter/material.dart';

ButtonStyle navElevatedButton = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
  backgroundColor: const Color.fromARGB(255, 255, 7, 135),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
);
