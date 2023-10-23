import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:input_controller/model/people.dart';
import 'package:input_controller/people_tracker/people_alert.dart';
import 'package:input_controller/style/button_style.dart';
import 'package:input_controller/style/text_style.dart';

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
    var checkName = nameController.text == "";
    var checkSurname = surnameController.text == "";
    var checkLocation = locationController.text == "";

    if (checkName || checkSurname || checkLocation) {
      showDialog(
        context: context,
        builder: (context) => const PeopleAlert(),
      );
    } else {
      Navigator.pop(context);
      widget.onAddPeople(
        People(
          name: nameController.text,
          surname: surnameController.text,
          gender: selectedGender.toString().split('.').last,
          location: locationController.text,
        ),
      );
    }
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
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(20, 20, 20, 1),
            Color.fromRGBO(29, 29, 29, 1),
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: closeElevatedButton,
              onPressed: closeModal,
              child: const Icon(
                Icons.close,
                size: 18,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Insert your name",
                style: fieldStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField.borderless(
                controller: nameController,
                keyboardType: TextInputType.name,
                placeholder: "Insert your name",
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Insert your Surname",
                style: fieldStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField.borderless(
                controller: surnameController,
                keyboardType: TextInputType.name,
                placeholder: "Insert your name",
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Insert your Location",
                style: fieldStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField.borderless(
                controller: locationController,
                keyboardType: TextInputType.name,
                placeholder: "Insert your name",
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 55, 55, 55),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
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
                style: submitElevatedButton,
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
