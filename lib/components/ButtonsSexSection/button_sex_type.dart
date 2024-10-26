import 'package:flutter/material.dart';

class ButtonSexType extends StatelessWidget {
  final String buttonText;
  final bool bollean;
  final VoidCallback onPressed;

  const ButtonSexType({
    super.key, required this.buttonText, required this.bollean, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 40,
      child:  ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: bollean == true ?  const Color(0xFF007BFF) : Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9)
            )), child: Text(buttonText, style: TextStyle(color: bollean != true ?  const Color(0xFF007BFF) : Colors.white),),
      ),
    );
  }
}
