import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  // const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {}
