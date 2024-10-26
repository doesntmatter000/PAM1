import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCBD3E1), // Apply the color to the background
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome 😊"),
          Text(
            "BMI CALCULATOR",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
