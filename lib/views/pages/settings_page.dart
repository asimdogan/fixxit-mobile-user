import 'package:flutter/material.dart';
import 'package:fixxit_mobile/views/pages/login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  void _quitAccount(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
          (route) => false, // remove all previous routes
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
            subtitle: Text('Placeholder account setting'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text('Placeholder notification setting'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text('Placeholder privacy setting'),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
            ),
            onPressed: () => _quitAccount(context),
            child: const Text('Quit account'),
          ),
        ],
      ),
    );
  }
}
