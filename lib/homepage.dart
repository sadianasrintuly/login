import 'package:flutter/material.dart';
import 'model_login.dart';

class Homepage extends StatefulWidget {
  final LoginModel loginModel;

  const Homepage({Key? key, required this.loginModel}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85.0),
                child: Text(
                  'Home Page',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 130),
              Text(
                'WELCOME ${widget.loginModel.name} \n '
                    '       🇧🇩 ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}