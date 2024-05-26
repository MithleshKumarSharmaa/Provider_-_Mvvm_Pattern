// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'User ID'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<UserProvider>(context, listen: false)
                    .fetchUser(_controller.text);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
