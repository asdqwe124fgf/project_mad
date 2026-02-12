import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map?;
    final name = args != null ? args['name'] ?? 'Unknown' : 'Unknown';
    final email = args != null ? args['email'] ?? 'Unknown' : 'Unknown';

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name:', style: TextStyle(fontSize: 18)),
            Text(name, style: TextStyle(fontSize: 22)),
            SizedBox(height: 24),

            Text('Email Address:', style: TextStyle(fontSize: 18)),
            Text(email, style: TextStyle(fontSize: 22)),
            SizedBox(height: 24),

            
          ],
        ),
      ),
    );
  }
}
