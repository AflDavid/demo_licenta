import 'package:flutter/material.dart';

class Program2Page extends StatelessWidget {
  const Program2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Program 2'),
      ),
      body: const Center(
        child: Text(
          'Implementare crud pentru admin',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}