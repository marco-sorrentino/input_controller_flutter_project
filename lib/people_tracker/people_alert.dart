import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PeopleAlert extends StatelessWidget {
  const PeopleAlert({super.key});

  @override
  Widget build(context) {
    return CupertinoAlertDialog(
      title: const Text("Invalid input"),
      content: const Text(
          "Please make sure a valid title, amount, date and category was entered"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("okay"),
        ),
      ],
    );
  }
}
