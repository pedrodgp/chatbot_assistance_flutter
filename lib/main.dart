import 'package:flutter/material.dart';
import 'package:chat_bot_assistance/pages/home_page.dart';
import 'package:chat_bot_assistance/pages/login_page.dart';
import 'package:chat_bot_assistance/pages/activity_page.dart';
import 'package:chat_bot_assistance/consts.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(), // Start with Login Page
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0; // Track the current index of the pages

  // List of pages
  final List<Widget> _pages = [
    ActivityPage(), // Change to Activity Page first
    HomePage(),     // HomePage for chat
  ];

  void _openVirtualAssistant() {
    // Navigate to the HomePage (chat)
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: Tooltip(
        message: 'Need help?',
        child: FloatingActionButton.extended(
          onPressed: _openVirtualAssistant, // Call the function to navigate to chat
          // Add message icon
          icon: Icon(Icons.message),
          label: Text('Need help?'), // Set button label
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
