import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/people_tracker/people_modal.dart';
import 'package:input_controller/style/button_style.dart';
import 'package:input_controller/style/text_style.dart';

class PeopleNav extends StatelessWidget {
  const PeopleNav({super.key, required this.onAddPeople});

  final void Function(People peopleParameter) onAddPeople;

  @override
  Widget build(context) {
    void openModal() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => PeopleModal(onAddPeople: onAddPeople),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          const Text(
            "People tracker",
            style: myTextStyle,
          ),
          const Spacer(),
          ElevatedButton(
            style: navElevatedButton,
            onPressed: openModal,
            child: const Text("ADD", style: boldText),
          )
        ],
      ),
    );
  }
}
