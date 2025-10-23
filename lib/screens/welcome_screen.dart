import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              // Welcome text
              Positioned(
                top: screenHeight * 0.15,
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: screenWidth * 0.12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Description text
              Positioned(
                top:
                    screenHeight * 0.15 +
                    screenWidth * 0.12 +
                    screenHeight * 0.03,
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
                child: Text(
                  "Please login or sign up to continue using our app",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Logo SVG
              Positioned(
                top: screenHeight * 0.34,
                left: screenWidth * 0.275,
                child: SizedBox(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.2,
                  child: SvgPicture.asset('assets/Logo.svg'),
                ),
              ),

              // Let's get started text
              Positioned(
                bottom: screenHeight * 0.22,
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
                child: Text(
                  "Let's get started !",
                  style: TextStyle(
                    fontSize: screenWidth * 0.065,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Sign up description text
              Positioned(
                bottom: screenHeight * 0.16,
                left: screenWidth * 0.06,
                right: screenWidth * 0.06,
                child: Text(
                  "sign up now and experience a new level of productivity.",
                  style: TextStyle(
                    fontSize: screenWidth * 0.032,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Circular arrow button
              Positioned(
                bottom: screenHeight * 0.05,
                left: (screenWidth - screenWidth * 0.18) / 2,
                child: SizedBox(
                  width: screenWidth * 0.18,
                  height: screenWidth * 0.18,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: const Color(0xFF4C26E0),
                      elevation: 6,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: screenWidth * 0.05,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
