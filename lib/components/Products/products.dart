import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    var winesContent = [
      {
        'name': 'Ocone Bozzovich Beneventano Bianco IGT',
        'type': 'Red wine',
        'description': 'Green and Flinty',
        'origin': 'From Champagne Blanc...',
        'availability': 'Available',
        'price': '₹ 23,256,596',
        'bottleSize': '750ml',
        'score': 94,
        'favorite': false,
        'image': 'bottle1.jpg', // Adjust path as needed
      },
      {
        'name': '2021 Petit Chablis - Passy Le Clou',
        'type': 'White wine',
        'description': 'Green and Flinty',
        'origin': 'From Champagne Blanc...',
        'availability': 'Available',
        'price': '₹ 23,256,596',
        'bottleSize': '750ml',
        'score': 94,
        'favorite': false,
        'image': 'bottle2.jpg', // Adjust path as needed
      },
      {
        'name': 'Philippe Fontaine Champagne Brut Rosé, Rosé de Saignée, NV',
        'type': 'Sparkling wine',
        'description': 'Green and Flinty',
        'origin': 'From Champagne Blanc...',
        'availability': 'Unavailable',
        'price': '₹ 23,256,596',
        'bottleSize': '750ml',
        'score': 94,
        'favorite': true,
        'image': 'bottle3.jpg', // Adjust path as needed
      },
      {
        'name': "2021 Cicada's Song Rosé",
        'type': 'Rose wine',
        'description': 'Green and Flinty',
        'origin': 'From Champagne Blanc...',
        'availability': 'Available',
        'price': '₹ 23,256,596',
        'bottleSize': '750ml',
        'score': 94,
        'favorite': false,
        'image': 'bottle4.jpg', // Adjust path as needed
      },
    ];

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            winesContent.length,
                (index) => ListTile(
              title: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8.0), // 1px solid grey border
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0), // Image border radius
                          child: Image.asset(
                            winesContent[index]['image'] as String, // Dynamically load image
                            width: MediaQuery.of(context).size.width * 0.35, // Adjust width as needed
                          ),
                        ),
                        const SizedBox(width: 10), // Add spacing between image and text
                        Expanded( // This will make the text wrap if it exceeds the available space
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                            children: [
                              Text(
                                winesContent[index]['name'] as String, // Corrected key access
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.visible,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.wine_bar,
                                    color: Colors.grey,
                                    size: 25,
                                  ),
                                  Text(
                                    winesContent[index]['origin'] as String, // Use origin from array
                                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
