import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../components/social_media.dart';
import '../components/text_field.dart';
import 'signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              // Log In text
              Positioned(
                top: screenHeight * 0.08,
                left: screenWidth * 0.07,
                child: Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: screenWidth * 0.11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Description text
              Positioned(
                top:
                    screenHeight * 0.09 +
                    screenHeight * 0.03 +
                    screenWidth * 0.11,
                left: screenWidth * 0.07,
                right: screenWidth * 0.07,
                child: Text(
                  "Please login to continue using our app.",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              // Social media text
              Positioned(
                top: screenHeight * 0.27,
                left: 0,
                right: 0,
                child: Text(
                  "Enter via Social Networks",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Social media icons
              Positioned(
                top: screenHeight * 0.27 + 22 + screenWidth * 0.045,
                left: 0,
                right: 0,
                child: const SocialIconsRow(),
              ),

              // Or login with email text
              Positioned(
                top: screenHeight * 0.395,
                left: 0,
                right: 0,
                child: Center(
                  child: SizedBox(
                    width: screenWidth * 0.3,
                    child: Text(
                      "or login with email",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              // Email and password fields
              Positioned(
                top: screenHeight * 0.45,
                left: 0,
                right: 0,
                child: const TextFields(),
              ),

              // Forgot password text
              Positioned(
                top: screenHeight * 0.67,
                right: screenWidth * 0.07,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Log in button
              Positioned(
                top: screenHeight * 0.75,
                left: screenWidth * 0.075,
                right: screenWidth * 0.075,
                child: SizedBox(
                  height: screenHeight * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4F2ADA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      // Handle login action
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.043,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              // Don't have an account text
              Positioned(
                top: screenHeight * 0.85,
                left: 0,
                right: 0,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "SignUp",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                        ),
                      ],
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
