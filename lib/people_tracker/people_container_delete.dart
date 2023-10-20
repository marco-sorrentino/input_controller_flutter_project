import 'package:flutter/material.dart';
import 'package:input_controller/style/background_style.dart';

class PeopleContainerDelete extends StatelessWidget {
  const PeopleContainerDelete({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: myBoxDecoration,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.arrow_back_ios_new_rounded,
                  color: Colors.white, size: 15.0),
              Text(
                "DELETE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
