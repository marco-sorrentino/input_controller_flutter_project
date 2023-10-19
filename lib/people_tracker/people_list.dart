import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/people_tracker/people_single.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key, required this.peopleList});

  final List<People> peopleList;

  @override
  State<PeopleList> createState() {
    return _PeopleListState();
  }
}

class _PeopleListState extends State<PeopleList> {
  @override
  Widget build(context) {
    widget.peopleList;
    return Expanded(
      child: ListView.builder(
        itemCount: widget.peopleList.length,
        itemBuilder: (context, index) => Column(
          children: [
            PeopleSingle(
                name: widget.peopleList[index].name,
                surname: widget.peopleList[index].surname,
                location: widget.peopleList[index].location,
                gender: widget.peopleList[index].gender),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
