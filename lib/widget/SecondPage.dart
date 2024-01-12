// SecondPage.dart

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String code;

  const SecondPage({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Name: $firstName"),
            Text("Last Name: $lastName"),
            Text("Email: $email"),
            Text("Code: $code"),
          ],
        ),
      ),
    );
  }
}
