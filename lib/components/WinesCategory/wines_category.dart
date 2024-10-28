import 'package:flutter/material.dart';

class WinesCategory extends StatefulWidget {
  const WinesCategory({super.key});

  @override
  _WinesCategoryState createState() => _WinesCategoryState();
}

class _WinesCategoryState extends State<WinesCategory> {
  // Variable to store selected chip
  String selectedChip = 'Type';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Shop wines by", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ChoiceChip(
              label: const Text('Type'),
              selected: selectedChip == 'Type',
              selectedColor: Colors.red[100],
              labelStyle: TextStyle(
                color: selectedChip == 'Type' ? Colors.red : Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),
              shape: const StadiumBorder(
                side: BorderSide(color: Colors.red),
              ),
              onSelected: (bool isSelected) {
                setState(() {
                  selectedChip = 'Type';
                });
              },
            ),
            const SizedBox(width: 8),
            ChoiceChip(
              label: const Text('Style'),
              selected: selectedChip == 'Style',
              selectedColor: Colors.grey[200],
              labelStyle: TextStyle(
                color: selectedChip == 'Style'
                    ? Colors.grey[800]
                    : Colors.grey[800],
              ),
              shape: const StadiumBorder(
                side: BorderSide(color: Colors.grey),
              ),
              onSelected: (bool isSelected) {
                setState(() {
                  selectedChip = 'Style';
                });
              },
            ),
            const SizedBox(width: 8),
            ChoiceChip(
              label: const Text('Countries'),
              selected: selectedChip == 'Countries',
              selectedColor: Colors.grey[200],
              labelStyle: TextStyle(
                color: selectedChip == 'Countries'
                    ? Colors.grey[800]
                    : Colors.grey[800],
              ),
              shape: const StadiumBorder(
                side: BorderSide(color: Colors.grey),
              ),
              onSelected: (bool isSelected) {
                setState(() {
                  selectedChip = 'Countries';
                });
              },
            ),
            const SizedBox(width: 8),
            ChoiceChip(
              label: const Text('Grape'),
              selected: selectedChip == 'Grape',
              selectedColor: Colors.grey[200],
              labelStyle: TextStyle(
                color: selectedChip == 'Grape'
                    ? Colors.grey[800]
                    : Colors.grey[800],
              ),
              shape: const StadiumBorder(
                side: BorderSide(color: Colors.grey),
              ),
              onSelected: (bool isSelected) {
                setState(() {
                  selectedChip = 'Grape';
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
