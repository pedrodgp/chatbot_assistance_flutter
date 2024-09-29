import 'package:chat_bot_assistance/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainPage(), // Navigate to MainPage (which contains ActivityPage)
            ),
          );
        },
        child: const Text("Login"),
      ),
    );
  }
}
