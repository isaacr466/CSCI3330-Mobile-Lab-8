import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message =
      'Welcome to my first mobile app!\nPlease click the button below';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App title
      appBar: AppBar(
        title: const Text('My First Mobile App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      // Centered message
      body: Center(
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
      ),

      // Floating action button
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        hoverColor: Colors.orange,
        onPressed: () {
          setState(() {
            message = 'You clicked the button!';
          });
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}