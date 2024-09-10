import 'package:flutter/material.dart';
import 'main.dart'; // Import the file where StartScreen is defined

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartScreen()), // Ensure StartScreen is accessible
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
