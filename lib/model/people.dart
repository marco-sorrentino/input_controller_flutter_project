class People {
  People(
      {required this.name,
      required this.surname,
      required this.gender,
      required this.location});

  final String name;
  final String surname;
  final String gender;
  final String location;
}

enum Gender { male, female, x }
