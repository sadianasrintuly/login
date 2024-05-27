import 'package:flutter/material.dart';

import 'loginScreen.dart';

class Homepage extends StatefulWidget {
   Homepage({required this.loginScreen});

  LoginScreen loginScreen;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff1A94B8),
            Color(0xff1AA4B8),
            Color(0xff1A8CB8),
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85.0),
            child: Text(
              'HOME ...',
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 130),

        ],
      ),
    ),
    );
  }

  }
