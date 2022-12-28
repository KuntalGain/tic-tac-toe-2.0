import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 17, 42),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 17, 42),
      ),
      body: Column(),
    );
  }
}
