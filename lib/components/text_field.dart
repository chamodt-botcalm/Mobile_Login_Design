import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<TextFields> {
  bool _obscurePassword = true; // To show/hide password

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // Email field
          TextField(
            decoration: InputDecoration(
              hintText: 'jhon.doe@gmail.com',
              hintStyle: const TextStyle(
                color: Color(0xFF6E6C6C),
                fontWeight: FontWeight.bold,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 29,
                vertical: 19,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19),
                borderSide: const BorderSide(
                  color: Color(0xFF000000),
                  width: 10,
                ),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 31),

          // Password field
          TextField(
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: '••••••••••••••',
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 29,
                vertical: 19,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(19),
                borderSide: const BorderSide(
                  color: Color(0xFF000000),
                  width: 10,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  color: Color(0xFF6E6C6C),
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
