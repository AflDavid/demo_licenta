import 'package:flutter/material.dart';

class Program1Page extends StatelessWidget {
  const Program1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Program 1'),
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