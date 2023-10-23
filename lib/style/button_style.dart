import 'package:flutter/material.dart';

ButtonStyle navElevatedButton = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  backgroundColor: const Color.fromRGBO(54, 246, 175, 1),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
  foregroundColor: Colors.black,
);

ButtonStyle closeElevatedButton = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  backgroundColor: const Color.fromRGBO(247, 66, 65, 1),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
);

ButtonStyle submitElevatedButton = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
  backgroundColor: const Color.fromRGBO(0, 58, 217, 1),
  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
);
