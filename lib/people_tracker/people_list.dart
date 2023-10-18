import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/people_tracker/people_single.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});

  @override
  State<PeopleList> createState() {
    return _PeopleListState();
  }
}

class _PeopleListState extends State<PeopleList> {
  final List<People> peopleList = [
    People(
      name: "Marco",
      surname: "Sorrentino",
      gender: "Male",
      location: "Milan",
    ),
    People(
      name: "Andrea",
      surname: "Rossi",
      gender: "Male",
      location: "Rome",
    ),
  ];

  @override
  Widget build(context) {
    return Expanded(
      child: ListView.builder(
        itemCount: peopleList.length,
        itemBuilder: (context, index) => PeopleSingle(
            name: peopleList[index].name,
            surname: peopleList[index].surname,
            location: peopleList[index].location,
            gender: peopleList[index].gender),
      ),
    );
  }
}
