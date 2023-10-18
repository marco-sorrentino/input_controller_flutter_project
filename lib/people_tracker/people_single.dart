import 'package:flutter/material.dart';

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
      child: Row(
        children: [
          Text(name),
          Text(surname),
          const Spacer(),
          Row(
            children: [
              Column(
                children: [
                  Text(location),
                  Text(gender),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
