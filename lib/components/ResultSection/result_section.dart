import 'package:flutter/material.dart';

class ResultSection extends StatelessWidget {
  final String result;
  final void Function() resultFunc;
  const ResultSection({super.key, required this.resultFunc, required this.result});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("20.4", style: TextStyle(color: Color(0xFF246AFE), fontWeight: FontWeight.bold, fontSize: 70),),
          Text(result, style: const TextStyle(color: Color(0xFF246AFE), fontSize: 30, fontWeight: FontWeight.bold)),
          ElevatedButton(onPressed: resultFunc,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF246AFE),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: MediaQuery.of(context).size.width * 0.38),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7)),
          ), child: const Text("Lets go", style: TextStyle(color: Colors.white),),)
        ],
      ),
    );
  }
}
