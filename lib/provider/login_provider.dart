import 'package:flutter/material.dart';

class ProviderLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome, Provider!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              // Implement controller and validation logic
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              // Implement controller and validation logic
            ),
            SizedBox(height: 20),
            RaisedButton(
              onPressed: () {
                // Implement login logic here
                // Navigate to the provider's dashboard on success
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

RaisedButton({required Null Function() onPressed, required Text child}) {
}
