import 'package:flutter/material.dart';

ButtonStyle navElevatedButton = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  backgroundColor: const Color.fromRGBO(181, 146, 253, 1),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
);
