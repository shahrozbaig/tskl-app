import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add sign-in logic here
              },
              child: Text('Sign In'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
