import 'package:flutter/material.dart';
import 'package:input_controller/style/text_style.dart';

class PeopleSingle extends StatelessWidget {
  const PeopleSingle({
    super.key,
    required this.name,
    required this.surname,
    required this.location,
    required this.gender,
  });

  final String name;
  final String surname;
  final String location;
  final String gender;

  @override
  Widget build(context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: const Color.fromARGB(133, 0, 0, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          children: [
            Text(
              "$name $surname",
              style: whiteText,
            ),
            const Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      location,
                      style: whiteText,
                    ),
                    Text(
                      gender,
                      style: whiteText,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
