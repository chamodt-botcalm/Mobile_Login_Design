import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../components/social_media.dart';
import '../components/text_field.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              // Sign Up text
              Positioned(
                top: screenHeight * 0.08,
                left: screenWidth * 0.07,
                child: Text(
                  "Sign Up",
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
                  "Please login or sign up to continue using our app",
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

              // Checkbox and text
              Positioned(
                top: screenHeight * 0.68,
                left: 52,
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: isChecked,
                        activeColor: Colors.black,
                        shape: const CircleBorder(),
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "I agree with privacy policy",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Sign up button
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
                      // Handle signup action
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth * 0.043,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              // Already have an account text
              Positioned(
                top: screenHeight * 0.85,
                left: 0,
                right: 0,
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: "You already have an account? ",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to login page
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LogIn(),
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
