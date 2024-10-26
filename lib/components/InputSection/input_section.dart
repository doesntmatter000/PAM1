import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSection extends StatelessWidget {
  final void Function(String) changeWeight;
  const InputSection({super.key, required this.changeWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Height", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: changeWeight,
              decoration: InputDecoration(
                hintText: "Height", // Set hint text as "Height"
                hintStyle: const TextStyle(color: Colors.grey), // Make the hint text grey
                filled: true, // Fills the background
                fillColor: Colors.white, // White background color
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  borderSide: BorderSide.none, // No outer border
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10), // Padding inside the field
              ),
            ),
          )
        ],
      ),
    );
  }
}
