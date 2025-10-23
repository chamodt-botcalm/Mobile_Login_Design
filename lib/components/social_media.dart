import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔹 Step 1: Create a list of icon data
    final List<Map<String, dynamic>> socialIcons = [
      {'icon': 'assets/s1.svg'},
      {'icon': 'assets/s2.svg'},
      {'icon': 'assets/s3.svg'},
    ];

    // 🔹 Step 2: Build the row dynamically
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(socialIcons.length, (index) {
        final item = socialIcons[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(child: SvgPicture.asset(item['icon'])),
        );
      }),
    );
  }
}
