import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../getX/wines_controller.dart';

class WinesCategory extends StatefulWidget {
  const WinesCategory({super.key});

  @override
  _WinesCategoryState createState() => _WinesCategoryState();
}

class _WinesCategoryState extends State<WinesCategory> {

  @override
  Widget build(BuildContext context) {
    final WineController wineController = Get.put(WineController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Shop wines by",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 12),
        Obx(() => Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: wineController.wineCategories.map((wine) {
            return ElevatedButton(
              onPressed: () {
                print("Selected category: ${wine.name}");
              },
              child: Text(wine.name),
            );
          }).toList(),
        )),
      ],
    );
  }
}
