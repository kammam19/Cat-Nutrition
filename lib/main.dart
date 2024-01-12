// main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 178, 106, 52)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFBF1D5),
      ),
      home: const LoginScreen(),
      routes: {
        "/SecondPage": (context) => const SecondPage(),
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _login() {
    if (nameController.text == "user" &&
        passwordController.text == "password") {
      Navigator.pushNamed(context, "/SecondPage");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cat Nutrition"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            TextButton(
              onPressed: _login,
              style: TextButton.styleFrom(
                primary: Colors.orange,
              ),
              child: const Text("Log in"),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  const Text("Don't have an account"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/SecondPage");
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  void _saveData() {
    print("First Name: ${firstNameController.text}");
    print("Last Name: ${lastNameController.text}");
    print("Email: ${emailController.text}");
    print("Code: ${codeController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: firstNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: codeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFBF1D5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            TextButton(
              onPressed: _saveData,
              style: TextButton.styleFrom(
                primary: Colors.orange,
              ),
              child: const Text("Confirm"),
            ),
          ],
        ),
      ),
    );
  }
}
