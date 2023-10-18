import 'package:flutter/material.dart';
import 'package:input_controller/people_tracker/people_modal.dart';
import 'package:input_controller/style/button_style.dart';
import 'package:input_controller/style/text_style.dart';

class PeopleNav extends StatelessWidget {
  const PeopleNav({super.key});

  @override
  Widget build(context) {
    void openModal() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => const PeopleModal(),
      );
    }

    return Row(
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
    );
  }
}
