import 'package:flutter/material.dart';
import 'package:input_controller/people_tracker/people_list.dart';
import 'package:input_controller/people_tracker/people_nav.dart';

class PeopleLayout extends StatelessWidget {
  const PeopleLayout({super.key});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: const Column(
        children: [
          PeopleNav(),
          PeopleList(),
        ],
      ),
    );
  }
}
