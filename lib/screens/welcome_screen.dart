import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 192,
            left: 96,
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            top: 258,
            left: 26,
            child: Container(
              width: 381,
              child: Text(
                "Please login or sign up to continue using our app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            top: 390,
            left: 90,
            child: Container(
              width: 190,
              height: 170,
              child: SvgPicture.asset('assets/Logo.svg'),
            ),
          ),
          Positioned(
            top: 662,
            left: 100,
            child: Container(
              width: 217,
              child: Text(
                "Let’s get started !",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Positioned(
            top: 708,
            left: 50,
            child: Container(
              width: 359,
              child: Text(
                "sign up now and experience a new level of productivity.",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Positioned(
            top: 781,
            left: 155,
            child: Container(
              width: 78,
              height: 75,
              child: ElevatedButton(
                onPressed: () {
                  // Add your button action here
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  // controls button size
                  backgroundColor: const Color(0xFF4C26E0), // purple color
                  elevation: 6,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
