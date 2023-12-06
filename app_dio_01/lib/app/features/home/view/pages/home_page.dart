import 'package:app_dio_01/app/features/person/person.dart';
import 'package:app_dio_01/app/features/register_user/view/pages/register_user_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const RegisterUserPage();
            }));
          },
          label: const Text('Novo Usuário')),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) {
            final data = persons[index];
            return ListTile(
              subtitle: Text('IMC: ${data.imc}'),
              title: Row(
                children: [
                  Expanded(child: Text(data.name)),
                  Expanded(child: Text('Peso: ${data.weith.toString()}')),
                  Expanded(child: Text('Altura: ${data.alt.toString()}')),
                ],
              ),
            );
          }),
    );
  }
}
