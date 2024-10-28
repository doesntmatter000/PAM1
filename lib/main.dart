  import 'package:flutter/material.dart';
import 'package:lab2/components/Products/products.dart';
  import 'package:lab2/components/SearchBar/search_bar.dart';
  import 'package:lab2/components/WineCategoryGrid/wine_category_grid.dart';
  import 'package:lab2/components/WinesCategory/wines_category.dart';
  import 'package:lab2/components/header/header.dart';

  void main() {
    runApp(const MaterialApp(
      home: Scaffold(
        appBar: Header(),
        body: Padding(padding: EdgeInsets.all(15), child:  Column(
          children: [
            SearchBarComponent(),
            SizedBox(height: 10), // Add gap between components
            WinesCategory(),
            SizedBox(height: 10), // Add gap between components
            WineCategoryGrid(),
            SizedBox(height: 10), // Add gap between components
            Products(),
          ],
        ),)
      ),

    ));
  }
