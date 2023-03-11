import 'dart:async';

import 'package:evolution/constants/images.dart';
import 'package:evolution/screen/LoginScreen.dart';
import 'package:evolution/utils/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(logo),
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: activeColor,
                  strokeWidth: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
