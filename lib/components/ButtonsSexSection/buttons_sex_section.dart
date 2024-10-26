import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lattest/components/ButtonsSexSection/button_sex_type.dart';

class ButtonsSexSection extends StatelessWidget {
  final bool sexState;
  final VoidCallback onPressed;

  const ButtonsSexSection({
    super.key,
    required this.sexState,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0), // Add top margin
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonSexType(
            onPressed: onPressed,
            bollean: sexState,
            buttonText: "Male",
          ),
          const SizedBox(width: 20),
          ButtonSexType(
            onPressed: onPressed,
            bollean: !sexState,
            buttonText: "Female",  // Corrected "Female" instead of "Male"
          ),
        ],
      ),
    );
  }
}
