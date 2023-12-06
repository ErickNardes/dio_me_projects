import 'package:app_dio_01/app/features/register_user/view/controller/register_user_controller.dart';
import 'package:flutter/material.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final controller = RegisterUserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro de Usuários'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: controller.nameController,
                decoration: const InputDecoration(
                  label: Text('Nome'),
                  hintText: 'Nome',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.weightController,
                decoration: const InputDecoration(
                  label: Text('Peso'),
                  hintText: 'Peso',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: controller.altController,
                decoration: const InputDecoration(
                  label: Text('Altura'),
                  hintText: 'Altura',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.registerUser();
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: const Text('Cadastrar')))
            ],
          ),
        ));
  }
}
