import 'package:flutter/material.dart';

class WineCategoryGrid extends StatelessWidget {
  const WineCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    var contentBottom = ["Red wines", "White wines", "Sparkling wines"]; // Added semicolon

    return SizedBox(
      height: 250, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: contentBottom.length,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("wineCategory${index + 1}.jpg"), // Ensure this image exists
                  ),
                  const SizedBox(height: 10),
                  Text(
                    contentBottom[index],
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
