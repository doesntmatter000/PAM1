import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../models/Wine/wine.dart';
import '../models/WineCategory/wine_category.dart';

class WineController extends GetxController {
  var wineCategories = <WineCategory>[].obs;
  var wines = <Wine>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/JsonData/v3.json');
    final data = json.decode(response);

    wineCategories.value = (data['wines_by'] as List)
        .map((json) => WineCategory.fromJson(json))
        .toList();
    wines.value = (data['carousel'] as List)
        .map((json) => Wine.fromJson(json))
        .toList();
    if (kDebugMode) {
      print("Wine categories loaded: ${wineCategories.length}");
    }
    if (kDebugMode) {
      print("Wines loaded: ${wines.length}");
    }
  }
}
