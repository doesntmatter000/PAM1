import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../getX/wines_controller.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    final WineController wineController = Get.put(WineController());

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            wineController.wines.length,
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
                        Obx(() => ClipRRect(
                          borderRadius: BorderRadius.circular(25.0), // Image border radius
                          child: Image.asset(
                            wineController.wines[index].image, // Dynamically load image
                            width: MediaQuery.of(context).size.width * 0.35, // Adjust width as needed
                          ),
                        ),),
                        const SizedBox(width: 10), // Add spacing between image and text
                        Expanded( // This will make the text wrap if it exceeds the available space
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                            children: [
                              Obx(() => Text(
                                wineController.wines[index].name, // Corrected key access
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.visible,
                              ),),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.wine_bar,
                                    color: Colors.grey,
                                    size: 25,
                                  ),
                                  Obx(() =>Text(
                                    wineController.wines[index].image, // Use origin from array
                                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                                  ),)
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
