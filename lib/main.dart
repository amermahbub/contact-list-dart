import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'John Doe',
      'email': 'john@example.com',
      'phone': '+1234567890',
    },
    {
      'name': 'Amer',
      'email': 'amer@gmail.com',
      'phone': '0182742812',
    },
    {
      'name': 'Karim',
      'email': 'karim@example.com',
      'phone': '+0198274628',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]['name']!),
            subtitle: Text(contacts[index]['email']!),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Name: ${contacts[index]['name']}'),
                        Text('Email: ${contacts[index]['email']}'),
                        Text('Phone: ${contacts[index]['phone']}'),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
