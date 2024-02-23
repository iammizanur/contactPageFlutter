import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Rony', Email: 'rony@gmail.com'),
    Contact(name: 'Roki', Email: 'roky@gmail.com'),
    Contact(name: 'Mizan', Email: 'mizan@yahoo.com'),
    Contact(name: 'Rakib', Email: 'rakib@hotmail.com'),
    Contact(name: 'Rifat', Email: 'Rifat@ap.com'),
    Contact(name: 'Mizan', Email: 'mizan@yahoo.com'),
    // Add more contacts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(contacts[index].name[0]),
            ),
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].Email),
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String Email;

  Contact(
      {
        required this.name, required this.Email
      }
    );
}
