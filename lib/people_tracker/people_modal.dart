import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/style/button_style.dart';

class PeopleModal extends StatefulWidget {
  const PeopleModal({super.key, required this.onAddPeople});

  final void Function(People peopleParameter) onAddPeople;

  @override
  State<PeopleModal> createState() {
    return _PeopleModalState();
  }
}

class _PeopleModalState extends State<PeopleModal> {
  Gender selectedGender = Gender.x;
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final locationController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    locationController.dispose();
    super.dispose();
  }

  void submitToTheList() {
    widget.onAddPeople(
      People(
          name: nameController.text,
          surname: surnameController.text,
          gender: selectedGender.toString().split('.').last,
          location: locationController.text),
    );

    Navigator.pop(context);
  }

  void selectGenderFunction(value) {
    if (value == null) {
      return;
    }
    setState(
      () {
        selectedGender = value;
      },
    );
  }

  @override
  Widget build(context) {
    void closeModal() {
      Navigator.pop(context);
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: navElevatedButton,
              onPressed: closeModal,
              child: const Icon(Icons.close), // Icona del pulsante
            ),
          ),
          TextField(
            controller: nameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(labelText: "Write your name"),
          ),
          TextField(
            controller: surnameController,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(labelText: "Write your surname"),
          ),
          TextField(
            controller: locationController,
            keyboardType: TextInputType.streetAddress,
            decoration: const InputDecoration(labelText: "Write your location"),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DropdownButton(
                value: selectedGender,
                items: Gender.values
                    .map(
                      (gender) => DropdownMenuItem(
                        value: gender,
                        child: Text(
                          gender.toString().split('.').last.toUpperCase(),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: selectGenderFunction,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: submitToTheList,
                child: const Text("SUBMIT"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
