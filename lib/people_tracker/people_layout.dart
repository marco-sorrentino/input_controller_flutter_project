import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/people_tracker/people_list.dart';
import 'package:input_controller/people_tracker/people_nav.dart';

class PeopleLayout extends StatefulWidget {
  const PeopleLayout({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PeopleLayoutState();
  }
}

class _PeopleLayoutState extends State<PeopleLayout> {
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

  void addPeopleToList(People peopleParameter) {
    setState(() {
      peopleList.add(peopleParameter);
    });
  }

  void reInsertPeopleToTheList(int indexOfPeople, People people) {
    setState(
      () {
        peopleList.insert(indexOfPeople, people);
      },
    );
  }

  void removePeopleToTheList(People people) {
    var indexOfPeople = peopleList.indexOf(people);
    setState(() {
      peopleList.remove(people);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("People delated"),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: "undo",
          onPressed: () {
            reInsertPeopleToTheList(indexOfPeople, people);
          },
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 40),
      child: Column(
        children: [
          PeopleNav(onAddPeople: addPeopleToList),
          PeopleList(
            peopleList: peopleList,
            onRemove: removePeopleToTheList,
          ),
        ],
      ),
    );
  }
}
