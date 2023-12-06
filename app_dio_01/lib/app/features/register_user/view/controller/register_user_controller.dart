import 'package:app_dio_01/app/features/imc/imc.dart';
import 'package:flutter/cupertino.dart';

import '../../../person/person.dart';

class RegisterUserController {
  final nameController = TextEditingController();
  final altController = TextEditingController();
  final weightController = TextEditingController();
  String imc = '';
  void registerUser() async {
    final params = Person(
        name: nameController.text,
        weith: double.parse(weightController.text),
        alt: double.parse(altController.text),
        imc: Imc.calculateImc(double.parse(weightController.text),
            double.parse(altController.text)));
    persons.add(params);
  }
}
