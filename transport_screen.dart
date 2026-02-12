import 'package:flutter/material.dart';

class TransportScreen extends StatelessWidget {
  final String title;
  TransportScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('$title')),
    );
  }
}
