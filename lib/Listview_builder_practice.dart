import 'package:flutter/material.dart';

class ExampleListViewBuilder extends StatelessWidget {
  ExampleListViewBuilder({super.key});

  final person = List<String>.generate(35, (i) => 'person $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App'),
      ),
      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.call),
            title: Text(person[index]),
          );
        },
      ),
    );
  }
}
