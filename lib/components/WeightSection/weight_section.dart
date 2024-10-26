import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lattest/components/WeightSection/weight_button.dart';

class WeightSection extends StatelessWidget {
  final int weight;
  final int age;
  final void Function(bool) changeWeight;
  final void Function(bool) changeAge;
  const WeightSection({super.key, required this.age, required this.weight,required this.changeWeight, required this.changeAge});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0), // Add top margin
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WeightButton(value: weight.toString(), changeWeight: changeWeight,),
          const SizedBox(width: 20),
          WeightButton(value: age.toString(), changeWeight: changeAge,),
        ],
      ),
    );
  }
}
