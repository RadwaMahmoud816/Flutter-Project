import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignUpPage()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(color: const Color.fromARGB(197, 0, 12, 150)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo2.jpeg',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to Med VR',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
