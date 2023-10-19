import 'package:flutter/material.dart';
import 'package:input_controller/people_tracker/people_layout.dart';

class PeopleTracker extends StatelessWidget {
  const PeopleTracker({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        body: PeopleLayout(),
      ),
    );
  }
}
