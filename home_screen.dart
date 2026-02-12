import 'package:flutter/material.dart';
import 'transport_screen.dart';

class HomeScreen extends StatelessWidget {
  void goToTransport(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => TransportScreen(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transport App')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                final args = ModalRoute.of(context)!.settings.arguments as Map?;
                Navigator.pushNamed(
                  context,
                  '/profile',
                  arguments: args,
                  );
                  },
                  ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TransportButton(
              label: 'Grab',
              icon: Icons.delivery_dining,
              onTap: () => goToTransport(context, 'Grab Options'),
            ),
            TransportButton(
              label: 'Taxi',
              icon: Icons.local_taxi,
              onTap: () => goToTransport(context, 'Taxi Options'),
            ),
            TransportButton(
              label: 'Train',
              icon: Icons.train,
              onTap: () => goToTransport(context, 'Train Timings'),
            ),
            TransportButton(
              label: 'Bus',
              icon: Icons.directions_bus,
              onTap: () => goToTransport(context, 'Bus Timings'),
            ),
          ],
        ),
      ),
    );
  }
}

class TransportButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  TransportButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        icon: Icon(icon),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: onTap,
      ),
    );
  }
}
// about us (launch mailbox, need phone and email address)
// registration